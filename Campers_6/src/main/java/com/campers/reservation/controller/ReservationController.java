package com.campers.reservation.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.campers.campsite.model.service.CampsiteService;
import com.campers.campsite.model.vo.Campsite;
import com.campers.reservation.model.service.ReservationService;
import com.campers.reservation.model.vo.Reservation;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
//@Slf4j
@SessionAttributes("loginCampsite")
@Controller

public class ReservationController {
	//	@Qualifier("ReservationService")
	//	@Autowired
	//	private ReservationService service;

	//	@RequestMapping(value = "/", method = RequestMethod.GET)
	//	public String home(Locale locale, Model model) {
	//		return "home";
	//	}

	@Autowired
	private ReservationService reservationservice;
	@Autowired
	private CampsiteService campsiteservice;

	@GetMapping("/reservation/step1")
	public ModelAndView campsiteView(ModelAndView model, @RequestParam HashMap<String, String> param) {
		String headCount = param.get("headCount");
		String campsite_index = param.get("campsite_index");
		Campsite campsite = campsiteservice.findByIndex(campsite_index);
		model.addObject("headCount",headCount);
		model.addObject("campsite",campsite);
		model.setViewName("/reservation/step1");

		return model;
	}

	@GetMapping("/reservation/step2")
	public ModelAndView step2(ModelAndView model, String reservation) {


		model.setViewName("/reservation/step2");

		return model;
	}

	@GetMapping("/reservation/step3")
	public ModelAndView step3(ModelAndView model, String reservation) {


		model.setViewName("/reservation/step3");

		return model;
	}
}
