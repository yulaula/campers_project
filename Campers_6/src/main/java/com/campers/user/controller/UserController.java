package com.campers.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.campers.board.model.service.BoardService;
import com.campers.board.model.vo.FreeBoard;
import com.campers.board.model.vo.ReviewBoard;
import com.campers.user.model.service.UserService;
import com.campers.user.model.vo.User;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@SessionAttributes("loginUser")
@Controller
public class UserController {
	
	@Autowired
	private UserService service;

	@Autowired
	private BoardService boardService;
	
	@GetMapping("/user/login")
	public String loginPage() {
		log.info("로그인 페이지 요청");
		return "user/login";
	}
	
	@RequestMapping(value = "/user/login", method = {RequestMethod.POST})
	public ModelAndView login(ModelAndView model, String userId, String userPwd) {
		log.info("{},{}",userId,userPwd);
		
		User loginUser = service.login(userId, userPwd);
		
		if(loginUser != null) {
			model.addObject("loginUser", loginUser); // 어노테이션을 통해 Session으로 처리되는 코드 
			model.setViewName("redirect:/");
		}else {
			model.addObject("msg","아이디나 패스워드가 일치하지 않습니다!");
			model.addObject("location", "/");
			model.setViewName("common/msg");
		}		
		return model;
	}
	
	@RequestMapping("/user/logout")
	public String logout(SessionStatus status) {

		log.info("status : " + status.isComplete());
		status.setComplete(); // 세션을 종료하는 코드!
		log.info("status : " + status.isComplete());
		
		return "redirect:/";
	}
	
	@GetMapping("/user/enroll")
	public String enrollPage() {
		log.info("가입 페이지 요청");
		return "user/enroll";
	}
	
	@PostMapping("/user/enroll")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute User user) {
		log.info("회원가입 user : " + user);
		
		int result = service.save(user);

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
	
	
	@GetMapping("/user/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id){
		log.info("userId : " + id );
		
		boolean result = service.validate(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	@GetMapping("/user/view")
	public ModelAndView view(ModelAndView model,
			@SessionAttribute(name ="loginUser", required = false) User loginUser
			) {
		log.info("회원정보 페이지 요청");
		
		List<FreeBoard> freeList = boardService.getFreeById(loginUser.getUserId());
		List<ReviewBoard> reviewList = boardService.getReviewById(loginUser.getUserId());
		int freeCount = boardService.countFreebyId(loginUser.getUserId());
		int reviewCount = boardService.countReviewbyId(loginUser.getUserId());
		int replyCount = boardService.countReplybyId(loginUser.getUserId());
		
		int totalBoard = freeCount + reviewCount;

		
		model.addObject("freeList", freeList);
		model.addObject("reviewList", reviewList);
		model.addObject("totalBoard", totalBoard);
		model.addObject("replyCount", replyCount);
		model.setViewName("/user/profileForUser");

		return model;
	}
	
	
	@PostMapping("/user/update")
	public ModelAndView update(ModelAndView model,
				@ModelAttribute User user, // @ModelAttribute 생략 가능! 
				@SessionAttribute(name ="loginUser", required = false) User loginUser
			) {
		if(loginUser == null || loginUser.getUserId().equals(user.getUserId()) == false) {
			model.addObject("msg", "잘못된 접근입니다.");
			model.addObject("location", "/");
			model.setViewName("common/msg");
			return model;
		}
		
		user.setUserId(loginUser.getUserId());
		int result = service.save(user);
		
		if(result > 0) {
			model.addObject("loginMember", service.findById(user.getUserId())); // 세션에 넣는 코드
			model.addObject("msg","회원정보를 수정하였습니다.");
			model.addObject("location", "/user/view");
		}else{
			model.addObject("msg", "회원정보를 수정에 실패하였습니다!");
			model.addObject("location", "/user/view");
		}
		
		model.setViewName("common/msg");
		return model;
	}
	
	/*
	@GetMapping("/user/delete")
	public ModelAndView delete(ModelAndView model, 
			@SessionAttribute(name ="loginMember", required = false) Member loginMember) {
		int result = service.delete(loginMember.getNo());
		
		if(result > 0) {
			model.addObject("msg", "정상적으로 탈퇴되었습니다.");
			model.addObject("location", "/logout");
		} else {
			model.addObject("msg", "회원 탈퇴를 실패하였습니다.");
			model.addObject("location", "/member/view");
		}	
		
		model.setViewName("common/msg");
		return model;
	}
	*/
	
	@GetMapping("/user/updatePwd")
	public String updatePwd() {
		return "/user/updatePwd";
	}
	
	@PostMapping("/user/updatePwd")
	public ModelAndView updatePwd(ModelAndView model, 
			@SessionAttribute(name ="loginUser", required = false) User loginUser, 
			String userPwd) {
		
		System.out.println(loginUser);
		int result = service.updatePwd(loginUser, userPwd);
		
		if(result > 0) {
			model.addObject("msg", "정상적으로 변경되었습니다.");
		} else {
			model.addObject("msg", "정상적으로 변경되지 않았습니다!");
		}	
		model.addObject("script", "self.close()");
		model.setViewName("common/msg");
		return model;
	}

}
