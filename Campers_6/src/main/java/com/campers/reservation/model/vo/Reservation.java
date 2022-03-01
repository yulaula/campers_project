package com.campers.reservation.model.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Reservation {
	String reservNo;
	int cost;
	int headcount;
	Date checkIn;
	Date checkOut;
	String userId;
	String campsiteIndex;
}
