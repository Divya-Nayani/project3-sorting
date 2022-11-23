package com.sortingproject.greenland;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.time.LocalDateTime;

@Slf4j
@SpringBootApplication
public class SortingApplication {

	public static void main(String[] args) {
		SpringApplication.run(SortingApplication.class, args);
		log.info("GreenLandAPI started successfully at {}", LocalDateTime.now());
	}

}
