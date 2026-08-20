package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.check;
import static uz.tiriktarix.admin.AdminSupport.cleanList;
import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.required;
import static uz.tiriktarix.admin.AdminSupport.requiredInt;

import java.util.List;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.quiz.QuizQuestion;
import uz.tiriktarix.quiz.QuizQuestionRepository;

/**
 * Test savollari.
 *
 * <p>Savol fakt kartochkasiga bog'lanishi kerak ({@code factCardId}) — bu
 * ishonchlilik konturi: javob tasdiqlangan manbadan kelib chiqadi. Bog'lash
 * texnik jihatdan majburiy emas (eski yozuvlar bor), lekin panel bunday
 * savollarni alohida belgilaydi va bosh sahifada sanaydi.
 */
@RestController
@RequestMapping("/api/admin/quiz-questions")
public class AdminQuizController {

    private static final String ENTITY = "QUIZ";
    private static final int MIN_OPTIONS = 2;
    private static final int MAX_OPTIONS = 6;

    public record QuestionDto(Long id, Long heroId, Long eraId, Long factCardId, String questionUz,
                              List<String> options, int correctIndex, String explanationUz,
                              String questionRu, List<String> optionsRu, String explanationRu) {

        static QuestionDto from(QuizQuestion q) {
            return new QuestionDto(q.getId(), q.getHeroId(), q.getEraId(), q.getFactCardId(),
                    q.getQuestionUz(), q.getOptions() == null ? List.of() : q.getOptions(),
                    q.getCorrectIndex(), q.getExplanationUz(),
                    q.getQuestionRu(), q.getOptionsRu() == null ? List.of() : q.getOptionsRu(),
                    q.getExplanationRu());
        }
    }

    public record QuestionRequest(Long heroId, Long eraId, Long factCardId, String questionUz,
                                  List<String> options, Integer correctIndex, String explanationUz,
                                  String questionRu, List<String> optionsRu,
                                  String explanationRu) {
    }

    private final QuizQuestionRepository questionRepository;
    private final FactCardRepository factCardRepository;
    private final AdminAuditService audit;

    public AdminQuizController(QuizQuestionRepository questionRepository,
                               FactCardRepository factCardRepository, AdminAuditService audit) {
        this.questionRepository = questionRepository;
        this.factCardRepository = factCardRepository;
        this.audit = audit;
    }

    @GetMapping
    public List<QuestionDto> list() {
        return questionRepository.findAllByOrderByIdAsc().stream().map(QuestionDto::from).toList();
    }

    @PostMapping
    @Transactional
    public QuestionDto create(@AuthenticationPrincipal AuthPrincipal principal,
                              @RequestBody QuestionRequest request) {
        QuizQuestion question = new QuizQuestion();
        apply(question, request);
        QuizQuestion saved = questionRepository.save(question);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Вопрос добавлен: " + shorten(saved.getQuestionUz()));
        return QuestionDto.from(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public QuestionDto update(@AuthenticationPrincipal AuthPrincipal principal,
                              @PathVariable Long id, @RequestBody QuestionRequest request) {
        QuizQuestion question = questionRepository.findById(id).orElseThrow(() -> notFound("Вопрос не найден"));
        apply(question, request);
        QuizQuestion saved = questionRepository.save(question);
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Вопрос изменён: " + shorten(saved.getQuestionUz()));
        return QuestionDto.from(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        QuizQuestion question = questionRepository.findById(id).orElseThrow(() -> notFound("Вопрос не найден"));
        questionRepository.delete(question);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id,
                "Вопрос удалён: " + shorten(question.getQuestionUz()));
    }

    private void apply(QuizQuestion question, QuestionRequest request) {
        check(request.heroId() != null || request.eraId() != null,
                "Вопрос нужно привязать к предку или к эпохе");
        List<String> options = cleanList(request.options());
        check(options.size() >= MIN_OPTIONS, "Нужно минимум " + MIN_OPTIONS + " варианта ответа");
        check(options.size() <= MAX_OPTIONS, "Не больше " + MAX_OPTIONS + " вариантов");
        int correct = requiredInt(request.correctIndex(), "Номер правильного ответа");
        check(correct >= 0 && correct < options.size(),
                "Номер правильного ответа выходит за пределы списка вариантов");
        if (request.factCardId() != null && !factCardRepository.existsById(request.factCardId())) {
            throw notFound("Карточка фактов не найдена");
        }

        question.setHeroId(request.heroId());
        question.setEraId(request.eraId());
        question.setFactCardId(request.factCardId());
        question.setQuestionUz(required(request.questionUz(), "Текст вопроса"));
        question.setOptions(options);
        question.setCorrectIndex(correct);
        question.setExplanationUz(optional(request.explanationUz()));
        /* Ruscha tarjima (V108). Variantlar soni asl ro'yxat bilan mos kelmasa,
           saqlanmaydi: aralash ro'yxat noto'g'ri javobga olib kelardi. */
        question.setQuestionRu(optional(request.questionRu()));
        question.setExplanationRu(optional(request.explanationRu()));
        List<String> ru = cleanList(request.optionsRu());
        question.setOptionsRu(ru.size() == options.size() ? ru : null);
    }

    private static String shorten(String text) {
        if (text == null) {
            return "";
        }
        return text.length() <= 60 ? text : text.substring(0, 57) + "…";
    }
}
