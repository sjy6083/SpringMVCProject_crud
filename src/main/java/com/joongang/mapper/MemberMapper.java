package com.joongang.mapper;

import com.joongang.domain.MemberVO;

public interface MemberMapper {
	
	public MemberVO read(String userId);
	
	public int insert(MemberVO member);
	
	public int insertAuth(String userId);
}
