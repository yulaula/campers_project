package com.campers.inquiry.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.campers.inquiry.model.vo.Inquiry;


@Mapper
public interface InquiryMapper {
	List<Inquiry> selectAll();
}
