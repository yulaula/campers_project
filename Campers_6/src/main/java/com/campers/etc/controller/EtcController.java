package com.campers.etc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class EtcController {

	@GetMapping("/common/team")
	public String view() {
		log.info("팀 페이지 요청");
		return "views/common/team";
	}
}
