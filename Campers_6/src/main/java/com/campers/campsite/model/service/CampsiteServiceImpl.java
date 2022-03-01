package com.campers.campsite.model.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.campers.campsite.model.mapper.CampsiteMapper;
import com.campers.campsite.model.vo.Campsite;
import com.campers.campsite.model.vo.CampsiteBean;
import com.kh.mvc.common.util.PageInfo;

@Service(value ="CampsiteService")
public class CampsiteServiceImpl implements CampsiteService{

	@Autowired
	private CampsiteMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; // SHA-256 Hash code 알고리즘 (일반향 암호)


	@Transactional(rollbackFor = Exception.class)
	public int insertCampsite(List<Campsite> list) {
		int result = 0;

		for(Campsite site : list) {
			result += mapper.insertCampsite(site);
			System.out.println("insertCampsite result : " + result);
		}

		return result;
	}

	@Override
	public int getCampsiteCount(Map<String, String> param) {

		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String loc = param.get("searchLoc");
		String type = param.get("searchType");
		System.out.println(param);
		//			if (loc.equals("all")){
		//				searchMap.put("addr1", " ");
		//			}
		if (!loc.equals("전체")) {
			searchMap.put("searchLoc", loc);
		}
		if (type.equals("전체")) {
			searchMap.put("searchType", type);
		}
		if (!type.equals("전체")) {
			searchMap.put("searchType", type);
		}
		//			if(searchValue.equals(null)) {
		//				searchMap.put("campsite_name", " ");
		//			}
		if(!searchValue.equals(null)) {
			searchMap.put("campsite_name", searchValue);
		}

		return mapper.getCampsiteCount(searchMap);
		
	}
	
	@Override
	public int getCampsiteCount2(CampsiteBean cb) {
		
//		Map<String, String> searchMap = new HashMap<String, String>();
//		String location = cb.getLocation();
//		String pricefrom = cb.getPricefrom();
//		String priceto = cb.getPriceto();
//		String neighbourhood = cb.getNeighbourhood();
//		String[] type = cb.getType();
//		String[] amenities = cb.getAmenities();
//		String[] facilities = cb.getFacilities();
//
//
//
//		if (!location.equals("전체")) {
//			searchMap.put("location", location);
//		}
//		searchMap.put("pricefrom", pricefrom);
//		searchMap.put("priceto", priceto);
//		searchMap.put("neighbourhood", neighbourhood);
	
		return mapper.getCampsiteCount2(cb);
	}

	@Override
	public List<Campsite> getCampsiteList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());

		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String loc = param.get("searchLoc");
		String type = param.get("searchType");
		System.out.println(param);

		if (!loc.equals("전체")) {
			searchMap.put("searchLoc", loc);
		}
		if (type.equals("전체")) {
			searchMap.put("searchType", type);
		}
		if (!type.equals("전체")) {
			searchMap.put("searchType", type);
		}
		if(!searchValue.equals(null)) {
			searchMap.put("campsite_name", searchValue);
		}


		return mapper.getCampsiteList(rowBounds,searchMap);
	}

	@Override
	public List<Campsite> getCampsiteList2(PageInfo pageInfo, CampsiteBean cb) {
		
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		System.out.println("서비스의 캠프사이트리스트2 : "  + cb.toString()); // 됨
		System.out.println("서비스의 roeBounds : " + rowBounds);
		
		return mapper.getCampsiteList2(rowBounds , cb);
	}
	
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int save(Campsite campsite) {		
		
		int result = 0;
		
		System.out.println(campsite.toString());
		String encodePwd = passwordEncoder.encode(campsite.getPassword()); // 평문을 hash code 변환
		campsite.setPassword(encodePwd);
		result = mapper.insertCampsiteUser(campsite);

		return result;
	}

	@Override
	public boolean validate(String id) {
		return this.findById(id) != null;
	}
	
	@Override
	public Campsite findById(String id) {
		return mapper.selectCampsiteById(id);
	}
	
	@Override
	public Campsite login(String id, String password) {
		
		Campsite campsite = this.findById(id);
		
		// passwordEncoder 활용법
		
		System.out.println(campsite.getPassword()); // Hash code로 암호화된 패스워드가 출력
		System.out.println(passwordEncoder.encode(password)); // encode를 통해 평문에서 암호문으로 바꾸는 코드
		System.out.println(passwordEncoder.matches(password, campsite.getPassword())); 
							// 파라메터로 받아온 pwd를 암호 화하고 기존 암호화 비교하는 코드
		
//		return member != null && 
//				passwordEncoder.matches(pwd, member.getPassword()) ? member : null;
//		
		if(campsite != null && passwordEncoder.matches(password, campsite.getPassword()) == true) {
		//if(user != null && user.getUserPwd().equals(pwd)) {
			return campsite;
		} else {
			return null;
		}
	}
	
	@Override
	public Campsite findByIndex(String campsite_index) {
		return mapper.selectCampsiteByIndex(campsite_index);
	}
}
