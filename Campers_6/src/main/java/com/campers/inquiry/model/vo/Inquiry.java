package com.campers.inquiry.model.vo;

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
public class Inquiry {
	String no;
	String sender;
	String receiver;
	Date registDate;
	String content;
}
