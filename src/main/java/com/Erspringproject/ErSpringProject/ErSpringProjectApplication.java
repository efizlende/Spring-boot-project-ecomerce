package com.Erspringproject.ErSpringProject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;

@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class)
public class ErSpringProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ErSpringProjectApplication.class, args);
	}

}
