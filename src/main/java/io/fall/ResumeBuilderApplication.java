package io.fall;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "io.fall")
@EnableAutoConfiguration(exclude = {ErrorMvcAutoConfiguration.class})
public class ResumeBuilderApplication {
	public static void main(String[] args) {
		SpringApplication.run(ResumeBuilderApplication.class, args);
	}
}