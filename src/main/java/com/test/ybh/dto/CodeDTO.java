package com.test.ybh.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class CodeDTO {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long rowNum;
	
	@Column
	private Long codeSeq;
	
	@Column
	private String code;

	@Column
	private String codeNm;
	
	@Column
	private Long parentCodeSeq;
	
	@Column
	private Long orderNo;
	
	@Column
	private String useYn;
	
	@Column
	private String delYn;
	
	@Column
	private String regId;
	
	@Column
	private String regDt;

	@Column
	private String modId;
	
	@Column
	private String modDt;
	
}
