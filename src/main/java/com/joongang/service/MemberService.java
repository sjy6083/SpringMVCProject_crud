package com.joongang.service;

import com.joongang.domain.MemberVO;

public interface MemberService {
	
	public MemberVO get(String userId);
	
	public int register(MemberVO member);
	
	public int registerAuth(String userId);
}
