package uz.tiriktarix.profile;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.chat.ConversationRepository;
import uz.tiriktarix.quiz.QuizResult;
import uz.tiriktarix.quiz.QuizResultRepository;

@RestController
@RequestMapping("/api/profile")
public class ProfileController {

    public record ProfileDto(String clientId, int xp, int streakDays, int level,
                             String rankUz, String rankEmoji, int xpIntoLevel, int xpForNext,
                             boolean activeToday, String rankRu) {

        private static final ZoneId TASHKENT = ZoneId.of("Asia/Tashkent");

        static ProfileDto from(LearnerProfile p) {
            Levels.LevelInfo info = Levels.of(p.getXp());
            boolean activeToday = LocalDate.now(TASHKENT).equals(p.getLastActiveDate());
            return new ProfileDto(p.getClientId(), p.getXp(), p.getStreakDays(), info.level(),
                    info.rankUz(), info.rankEmoji(), info.xpIntoLevel(), info.xpForNext(),
                    activeToday, info.rankRu());
        }
    }

    /** Yutuqlar sahifasi uchun kengaytirilgan statistika. */
    public record StatsDto(ProfileDto profile, int totalQuizzes, int perfectQuizzes,
                           int totalCorrect, int totalQuestions, long conversations,
                           long heroesTalked, List<AchievementService.Achievement> achievements) {
    }

    private final ProfileService profileService;
    private final QuizResultRepository quizResultRepository;
    private final ConversationRepository conversationRepository;
    private final AchievementService achievementService;

    public ProfileController(ProfileService profileService,
                             QuizResultRepository quizResultRepository,
                             ConversationRepository conversationRepository,
                             AchievementService achievementService) {
        this.profileService = profileService;
        this.quizResultRepository = quizResultRepository;
        this.conversationRepository = conversationRepository;
        this.achievementService = achievementService;
    }

    @GetMapping("/{clientId}")
    public ProfileDto get(@PathVariable String clientId) {
        return ProfileDto.from(profileService.getOrCreate(clientId));
    }

    @GetMapping("/{clientId}/stats")
    public StatsDto stats(@PathVariable String clientId) {
        LearnerProfile profile = profileService.getOrCreate(clientId);
        List<QuizResult> results = quizResultRepository.findByProfileIdOrderByCreatedAtDesc(profile.getId());
        int perfect = (int) results.stream().filter(r -> r.getScore() == r.getTotal()).count();
        int correct = results.stream().mapToInt(QuizResult::getScore).sum();
        int questions = results.stream().mapToInt(QuizResult::getTotal).sum();
        long conversations = conversationRepository.countByClientId(clientId);
        long heroesTalked = conversationRepository.countDistinctHeroesByClientId(clientId);
        boolean riddleSolved = results.stream()
                .anyMatch(r -> "riddle".equals(r.getScope()) && r.getScore() == r.getTotal());

        List<AchievementService.Achievement> achievements = achievementService.compute(new AchievementService.Inputs(
                profile.getXp(), profile.getStreakDays(), results.size(), perfect,
                questions, conversations, heroesTalked, riddleSolved));

        return new StatsDto(ProfileDto.from(profile), results.size(), perfect, correct,
                questions, conversations, heroesTalked, achievements);
    }
}
