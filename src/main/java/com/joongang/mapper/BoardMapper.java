package com.joongang.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.joongang.domain.BoardVO;
import com.joongang.domain.Criteria;

public interface BoardMapper {
	
	//@Select("select * from tbl_board where bno > 0") //@특정함수(쿼리문)
	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Criteria criteria);
	
	public void insert(BoardVO board);
	
	public Integer update(BoardVO board);
	
	public BoardVO read(Long bno);
	
	public Integer delete(Long bno);
	
	public int getTotalCount(Criteria criteria);
	
	public void updateReplyCnt(@Param("bno") Long bno,
			@Param("amount") int amount); //amount: 댓글 추가된 갯수
}
