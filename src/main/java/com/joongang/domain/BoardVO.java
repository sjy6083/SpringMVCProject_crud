package com.joongang.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
//value object: 가져온 데이터 값들을 저장하는 위치
public class BoardVO {
	private Long rn;
	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updateDate;
	
	private int replyCnt;
	
	private List<BoardAttachVO> attachList;
}
