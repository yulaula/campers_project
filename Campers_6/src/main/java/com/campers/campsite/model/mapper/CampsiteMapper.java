package com.campers.campsite.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.campers.campsite.model.vo.Campsite;
import com.campers.campsite.model.vo.CampsiteBean;

@Mapper
public interface CampsiteMapper {
	// paging 처리를 위한 RowBounds 셋팅!
		List<Campsite> getCampsiteList(RowBounds rowBounds, Map<String, String> map);
		
		int getCampsiteCount(Map<String, String> searchMap);

//		Campsite getCampsiteByNo(int campsite_index);
//		
		int insertCampsite(Campsite site);
		
		int insertCampsiteUser(Campsite campsite);
//
//		int updateCampsite(Campsite site);
//		
//		int updateReadCount(Campsite site);
//		
//		int deleteReply(int no);
//		
//		int deleteBoard(int no);

		Campsite selectCampsiteById(String id);

		List<Campsite> getCampsiteList2(RowBounds rowBounds, CampsiteBean cb);

		int getCampsiteCount2(CampsiteBean cb);
		
		Campsite selectCampsiteByIndex(String campsite_index);

		List<Campsite> selectCampsiteListById(String id);
		
	
}
