package com.joongang.domain;

import lombok.Data;

@Data
public class BoardAttachVO {
	//UUI = Universally Unique IDentifier
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	
	private Long bno;
}
