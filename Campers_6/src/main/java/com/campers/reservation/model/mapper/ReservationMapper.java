package com.campers.reservation.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.campers.reservation.model.vo.Reservation;


@Mapper
public interface ReservationMapper {
	List<Reservation> selectAll();
}
