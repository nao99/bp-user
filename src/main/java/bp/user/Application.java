package bp.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.lang.NonNull;

/**
 * Application class
 *
 * @author  Nikolai Osipov <nao99.dev@gmail.com>
 * @version 1.0.0
 * @since   2021-02-06
 */
@SpringBootApplication
public class Application {
    /**
     * The application entry point
     *
     * @param args application arguments
     */
    public static void main(@NonNull String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
