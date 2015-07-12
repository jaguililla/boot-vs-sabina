
package hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication @RestController public class Hello {
    @RequestMapping("/") public String index() {
        return "Hello!";
    }

    public static void main(String[] args) {
        SpringApplication.run(Hello.class, args);
    }
}
