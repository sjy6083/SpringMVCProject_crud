package com.joongang.mapper;

import java.util.List;

import com.joongang.domain.BoardAttachVO;

public interface BoardAttachMapper {
	public void insert(BoardAttachVO vo);
	
	public List<BoardAttachVO> findByBno(Long bno);
	
	public void deleteAll (Long bno);
	
	public List<BoardAttachVO> getOldFiles();
}
