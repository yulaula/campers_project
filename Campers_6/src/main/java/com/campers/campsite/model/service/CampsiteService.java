package com.campers.campsite.model.service;


import java.util.List;
import java.util.Map;

import com.campers.campsite.model.vo.Campsite;
import com.campers.campsite.model.vo.CampsiteBean;
import com.campers.user.model.vo.User;
import com.kh.mvc.common.util.PageInfo;

public interface CampsiteService {
	int insertCampsite(List<Campsite> array);

	int getCampsiteCount(Map<String, String> param);
	int getCampsiteCount2(CampsiteBean cb);
	
	List<Campsite> getCampsiteList(PageInfo pageInfo, Map<String, String> param);
	List<Campsite> getCampsiteList2(PageInfo pageInfo, CampsiteBean cb);
	
	public int save(Campsite campsite);

	boolean validate(String id);

	Campsite findById(String id);
	
	Campsite login(String id, String password);
	
	Campsite findByIndex(String campsite_index);
	

}
