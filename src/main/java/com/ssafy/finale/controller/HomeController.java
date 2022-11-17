package com.ssafy.finale.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	@ResponseBody
	public String goHome(HttpServletRequest request) {
		System.out.println("enter");
		return "Hello Spring Boot";
	}
}
