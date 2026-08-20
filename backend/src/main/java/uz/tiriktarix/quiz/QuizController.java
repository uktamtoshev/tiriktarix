package uz.tiriktarix.quiz;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.quiz.QuizService.AnswerItem;
import uz.tiriktarix.quiz.QuizService.Difficulty;
import uz.tiriktarix.quiz.QuizService.QuestionDto;
import uz.tiriktarix.quiz.QuizService.SubmitResult;

@RestController
@RequestMapping("/api/quiz")
public class QuizController {

    public record SubmitRequest(@NotBlank String clientId, @NotBlank String scope,
                                Difficulty difficulty, @NotEmpty List<AnswerItem> answers) {

        Difficulty difficultyOrDefault() {
            return difficulty == null ? Difficulty.EASY : difficulty;
        }
    }

    /** Bitta savolni darhol tekshirish — savolma-savol rejimi uchun. */
    public record CheckRequest(@NotNull Long questionId, int chosenIndex) {
    }

    private final QuizService quizService;

    public QuizController(QuizService quizService) {
        this.quizService = quizService;
    }

    @GetMapping("/hero/{slug}")
    public List<QuestionDto> heroQuiz(@PathVariable String slug) {
        return quizService.heroQuiz(slug);
    }

    @GetMapping("/era/{code}")
    public List<QuestionDto> eraQuiz(@PathVariable String code) {
        return quizService.eraQuiz(code);
    }

    @GetMapping("/riddle")
    public QuestionDto riddleOfDay() {
        return quizService.riddleOfDay();
    }

    /** Film testi: savollar film qahramoni va/yoki davri pulidan olinadi. */
    @GetMapping("/film/{id}")
    public List<QuestionDto> filmQuiz(@PathVariable Long id) {
        return quizService.filmQuiz(id);
    }

    /** Savolma-savol rejimi: darhol to'g'ri javob va izoh. XP bermaydi. */
    @PostMapping("/check")
    public QuizService.AnswerReview check(@Valid @RequestBody CheckRequest request) {
        return quizService.check(request.questionId(), request.chosenIndex());
    }

    @PostMapping("/submit")
    public SubmitResult submit(@Valid @RequestBody SubmitRequest request) {
        return quizService.submit(request.clientId(), request.scope(),
                request.difficultyOrDefault(), request.answers());
    }
}
