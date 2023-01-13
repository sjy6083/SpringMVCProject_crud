package com.joongang.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.joongang.domain.BoardVO;
import com.joongang.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	   @Autowired
	   private BoardMapper mapper;
	   
//	   @Test   //테스트 완료되면 앞으로 주석처리
//	   public void testGetList() {
//	      List<BoardVO> list = mapper.getList();
//	      for (int i=0; i<list.size(); i++) {
//	         log.info(list.get(i));
//	      }
//	   }
	   
//	   public void testInsert() {
//		   BoardVO board = new BoardVO();
//		   board.setTitle("새글");
//		   board.setContent("새글의 내용");
//		   board.setWriter("writer1234");
//		   mapper.insert(board);
//		   log.info(board);
//	   }
	   
//	   public void testUpdate() {
//		   BoardVO board = new BoardVO();
//		   board.setBno(5L); //타입캐스팅
//		   board.setTitle("수정eee");
//		   board.setContent("수정eeee555555");
//		   board.setWriter("writer1234");
//		   int count = mapper.update(board);
//		   log.info("UPDATE COUNT: " + count);
//	   }
	   
//	   public void testDelete() {
//		   int count = mapper.delete(5L);
//		   log.info("Delete count: " + count);
//	   }
	   
//	   public void testRead() {
//		   BoardVO board = mapper.read(3L);
//		   log.info("Result: " + board);
//	   }
	   
//	   @Test
//	   public void testPaging() {
//		   Criteria criteria = new Criteria();
//		   criteria.setPageNum(1);
//		   criteria.setAmount(10);
//		   criteria.calOffset();
//		   List<BoardVO> list = mapper.getListWithPaging(criteria);
//		   for (int i=0; i<list.size(); i++) {
//			   log.info(list.get(i));
//		   }
//		   //list.forEach(board -> log.info(board));
//	   }
	   
	   @Test
	   public void testSearch() {
		   Criteria criteria = new Criteria();
		   criteria.setKeyword("1");
		   criteria.setType("TCW");
		   criteria.calOffset();
		   List<BoardVO> list = mapper.getListWithPaging(criteria);
		   for (int i=0; i<list.size(); i++) {
			   log.info(list.get(i));
		   }
		   //list.forEach(board->log.info(board));
	   }
	   
	}
