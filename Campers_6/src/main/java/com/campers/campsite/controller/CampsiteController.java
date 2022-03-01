package com.campers.campsite.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.campers.board.model.vo.FreeBoard;
import com.campers.board.model.vo.ReviewBoard;
import com.campers.campsite.model.service.CampsiteService;
import com.campers.campsite.model.vo.Campsite;
import com.campers.campsite.model.vo.CampsiteBean;
import com.campers.user.model.vo.User;
import com.kh.mvc.common.util.PageInfo;

import api.campers.ApiExplorer;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@SessionAttributes("loginCampsite")
@Controller
public class CampsiteController {

	@Qualifier("CampsiteService")
	@Autowired
	private CampsiteService service;

	boolean isInit = false;


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}

	@RequestMapping(value = "/init", method = RequestMethod.GET)
	public String init(Model model) throws IOException {

		if(isInit == false) {
			isInit = true;
		}else {
			model.addAttribute("msg","이미 init 실행중입니다!");
			return "init";
		}

		ApiExplorer api = new ApiExplorer();

		List<Campsite> list = api.campsiteData();

		if(list == null || list.size() == 0) {
			model.addAttribute("msg","API 로드 실패!");
			isInit = false;
			return "init";
		}

		int result = service.insertCampsite(list);
		System.out.println(result);

		if(result == list.size()) {
			model.addAttribute("msg","DB 저장 성공");
		}else {
			isInit = false;
			model.addAttribute("msg","DB 저장 실패!!");
		}

		return "init";
	}
	@RequestMapping(value = "/searchList2", method = RequestMethod.GET)
	public String searchList(Model model) {



		return "campsite/searchList2";

	}
	
	@RequestMapping(value = "/searchList2/gnrlsite", method = RequestMethod.GET)
	public ModelAndView searchListgnrl(ModelAndView model) {
		
		
		model.addObject("searchSite","gnrlsite");
		model.setViewName("/campsite/searchList2");
		
		return model;
		
	}
	@RequestMapping(value = "/searchList2/autosite", method = RequestMethod.GET)
	public ModelAndView searchListauto(ModelAndView model) {
		
		
		model.addObject("searchSite","autosite");
		model.setViewName("/campsite/searchList2");
		
		return model;
		
	}
	@RequestMapping(value = "/searchList2/glampsite", method = RequestMethod.GET)
	public ModelAndView searchListglamp(ModelAndView model) {
		
		
		model.addObject("searchSite","glampsite");
		model.setViewName("/campsite/searchList2");
		
		return model;
		
	}
	@RequestMapping(value = "/searchList2/caravsite", method = RequestMethod.GET)
	public ModelAndView searchListcarav(ModelAndView model) {
		
		
		model.addObject("searchSite","caravsite");
		model.setViewName("/campsite/searchList2");
		
		return model;
		
	}
	
	@GetMapping("/campsite/searchList")
	public ModelAndView list(ModelAndView model, @RequestParam Map<String, String> param) {
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		int cnt = service.getCampsiteCount(param);
		String searchLoc = param.get("searchLoc");
		String searchType = param.get("searchType");
		String searchValue = param.get("searchValue");
		PageInfo pageInfo = new PageInfo(page, 10, service.getCampsiteCount(param), 10);
		List<Campsite> list = service.getCampsiteList(pageInfo,param);
		
		model.addObject("searchLoc",searchLoc);
		model.addObject("searchType", searchType);
		model.addObject("searchValue",searchValue);
		model.addObject("cnt", cnt);
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("/campsite/searchList");
		
		return model;
	}


	@RequestMapping(value = "/searchList3", method=RequestMethod.GET)
	public ModelAndView searchCampingsite(ModelAndView model, @RequestParam HashMap<String, String> param, 
			@RequestParam(value = "type", required = false, defaultValue = "") String[] type, 
			@RequestParam(value = "amenities", required = false, defaultValue = "") String[] amenities,
			@RequestParam(value = "facilities", required = false, defaultValue = "") String[] facilities,
			HttpServletRequest req
			) {
		
		
		String searchSite = param.get("searchSite");
		System.out.println(searchSite);
		String location = param.get("location");
		String bookingDate = param.get("bookingDate");
		String guests = param.get("guests");
		String pricefrom = param.get("pricefrom");
		String priceto = param.get("priceto");
		String neighbourhood = null;
		if(param.get("neighbourhood") != "") {
			neighbourhood = param.get("neighbourhood");
		}
				
		
		if(type.length == 0 ) {
			type = null;
		}
		if(amenities.length == 0 ) {
			amenities = null;
		}
		if(facilities.length == 0 ) {
			facilities = null;
		}
		
		int pricefromNum = 0;
		int pricetoNum = 400000;
		
		try {
			pricefromNum = Integer.parseInt(pricefrom);
			pricetoNum = Integer.parseInt(priceto);
		} catch (Exception e) {
		}
		
		CampsiteBean cb = new CampsiteBean(searchSite, location, bookingDate, guests, pricefromNum, pricetoNum, neighbourhood, type, amenities, facilities);
		
		int page = 1;
		String queryUrl =  req.getQueryString();
		if(param.containsKey("page") == true) {
			try {
				int index = queryUrl.lastIndexOf("page");
				queryUrl = queryUrl.substring(0,index-1);
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		int cnt = service.getCampsiteCount2(cb);
		PageInfo pageInfo = new PageInfo(page, 6, service.getCampsiteCount2(cb), 6);
		List<Campsite> list = service.getCampsiteList2(pageInfo, cb);
		
		
		System.out.println(list.toString());
		System.out.println("cnt : " + cnt);
		model.addObject("isResult", "true");
		model.addObject("searchSite",searchSite);

		model.addObject("cnt", cnt);
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		
		
		
		
		model.addObject("requestUrl", req.getRequestURI().toString() + "?" + queryUrl);
		model.setViewName("/campsite/searchList3");
		return model;
		
		
	}
	
	
	
	@GetMapping("/campsite/view")
	public ModelAndView campsiteView(ModelAndView model, @RequestParam("campsite_index") String campsite_index) {
		
		Campsite campsite = service.findByIndex(campsite_index);
		
		model.addObject("campsite",campsite);
		model.setViewName("/campsite/view");
		
		return model;
	}
	
	
	// 캠핑장유저 로그인
	
	@GetMapping("/campsite/login")
	public String loginPage() {
		log.info("로그인 페이지 요청");
		return "campsite/login";
	}
	
	@RequestMapping(value = "/campsite/login", method = {RequestMethod.POST})
	public ModelAndView login(ModelAndView model, String id, String password) {
		log.info("{},{}", id, password);
		
		Campsite loginCampsite = service.login(id, password);
		
		if(loginCampsite != null) {
			model.addObject("loginCampsite", loginCampsite); // 어노테이션을 통해 Session으로 처리되는 코드 
			model.setViewName("redirect:/");
		}else {
			model.addObject("msg","아이디나 패스워드가 일치하지 않습니다!");
			model.addObject("location", "/");
			model.setViewName("common/msg");
		}		
		return model;
	}
	
	
	@PostMapping("/campsite/enroll")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute Campsite campsite) {
		log.info("회원가입 campsite : " + campsite);
		
		int result = service.save(campsite);

		if(result > 0) {
			model.addObject("msg", "회원 가입에 성공하였습니다.");
			model.addObject("location", "/");
		}else {
			model.addObject("msg", "회원 가입에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addObject("location", "/");
		}
		
		model.setViewName("common/msg");
		
		return model;
	}
	
	@GetMapping("/campsite/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id){
		log.info("campsiteId : " + id );
		
		boolean result = service.validate(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	@RequestMapping("/campsite/logout")
	public String logout(SessionStatus status) {

		log.info("status : " + status.isComplete());
		status.setComplete(); // 세션을 종료하는 코드!
		log.info("status : " + status.isComplete());
		
		return "redirect:/";
	}
	
	@GetMapping("/campsite/add_step0")
	public String addStep0() {
		log.info("캠핑장 추가 0 페이지 요청");
		return "campsite/add_step0";
	}
	
	@GetMapping("/campsite/userView")
	public ModelAndView view(ModelAndView model,
			@SessionAttribute(name ="loginCampsite", required = false) Campsite loginCampsite
			) {
		log.info("캠핑장회원 정보 페이지 요청");
		
		List<Campsite> campsiteList = service.selectCampsiteListById(loginCampsite.getId());
		
		System.out.println("id로 찾은 campsite : " + campsiteList);
		
		model.addObject("campsiteList", campsiteList);
		model.setViewName("/user/profileForCampsite");

		return model;
	}
}
