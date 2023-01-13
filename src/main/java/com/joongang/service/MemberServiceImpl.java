package com.joongang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.joongang.domain.MemberVO;
import com.joongang.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class MemberServiceImpl  implements MemberService {
	@Autowired
	private PasswordEncoder pwencoder;
	
	private MemberMapper mapper;
	
	@Override
	public MemberVO get(String userId) {
		log.info("Member Get...." + userId);
		return mapper.read(userId);
	}

	@Override
	public int register(MemberVO member) {
		member.setUserPw(pwencoder.encode(member.getUserPw()));
		log.info("Member register...." + member);
		return mapper.insert(member);
	}

	@Override
	public int registerAuth(String userId) {
		log.info("register Auth : " + userId);
		return mapper.insertAuth(userId);
	}
}
