package com.shchipunov;

import static org.springframework.web.reactive.function.server.RequestPredicates.GET;
import static org.springframework.web.reactive.function.server.RouterFunctions.route;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.ServerResponse;

@SpringBootApplication
public class Application {

	public static void main(String[] arguments) {
		SpringApplication.run(Application.class, arguments);
	}
}

@Component
class RequestHandler {

	@Bean
	RouterFunction<ServerResponse> routes() {
		return route(GET("/users/{name}"), request -> {
			return ServerResponse.ok().body(BodyInserters.fromObject("Hello " + request.pathVariable("name")));
		});
	}
}
