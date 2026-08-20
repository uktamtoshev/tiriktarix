package uz.tiriktarix.leaderboard;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.leaderboard.LeaderboardService.PageDto;
import uz.tiriktarix.leaderboard.LeaderboardService.Period;

/**
 * Reyting jadvali — ochiq API.
 *
 * Admin panelidagi ro'yxatdan farqi: bu yerda shaxsiy ma'lumot chiqmaydi
 * (ro'yxatdan o'tmagan bola «Mehmon-XXXX» sifatida ko'rinadi) va avtorizatsiya
 * talab qilinmaydi.
 */
@RestController
@RequestMapping("/api/leaderboard")
public class LeaderboardController {

    private final LeaderboardService leaderboardService;

    public LeaderboardController(LeaderboardService leaderboardService) {
        this.leaderboardService = leaderboardService;
    }

    /**
     * @param period  ALL — jami XP, MONTH/WEEK — shu oraliqda yig'ilgani
     * @param clientId so'rovchi — o'z qatorini ajratib ko'rsatish uchun (ixtiyoriy)
     */
    @GetMapping
    public PageDto page(@RequestParam(defaultValue = "ALL") Period period,
                        @RequestParam(defaultValue = "0") int page,
                        @RequestParam(defaultValue = "50") int size,
                        @RequestParam(required = false) String clientId) {
        return leaderboardService.page(period, page, size, clientId);
    }
}
