package com.joongang.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joongang.domain.Criteria;
import com.joongang.domain.ReplyPageDTO;
import com.joongang.domain.ReplyVO;
import com.joongang.mapper.BoardMapper;
import com.joongang.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ReplyServiceImpl implements ReplyService {
	
	private ReplyMapper mapper;
	private BoardMapper boardMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO reply) {
		log.info("register....."+reply);
		boardMapper.updateReplyCnt(reply.getBno(), 1);
		return mapper.insert(reply);
	}

	@Override
	public ReplyVO get(Long rno) {
		log.info("get......"+rno);
		return mapper.read(rno);
	}

	@Override
	public int modify(ReplyVO reply) {
		log.info("modify......"+reply);
		return mapper.update(reply);
	}
	
	@Transactional
	@Override
	public int remove(Long rno) {
		log.info("remove....."+rno);
		ReplyVO vo = mapper.read(rno);
		boardMapper.updateReplyCnt(vo.getBno(), -1);
		return mapper.delete(rno);
	}

	@Override
	public List<ReplyVO> getList(Criteria criteria, Long bno) {
		log.info("get Reply List of a Board"+bno);
		return mapper.getListWithPaging(criteria, bno);
	}

	@Override
	public ReplyPageDTO getListPage(Criteria criteria, Long bno) {
		log.info("get Reply List of a Board"+bno);
		criteria.calOffset();
		return new ReplyPageDTO(
			mapper.getCountByBno(bno),
			mapper.getListWithPaging(criteria, bno));
	}
}
