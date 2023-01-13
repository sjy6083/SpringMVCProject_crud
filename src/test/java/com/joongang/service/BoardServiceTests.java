package com.joongang.service;

import static org.junit.Assert.assertNotNull;

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
public class BoardServiceTests {
	
	@Autowired
	private BoardService service;
//	
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
//	@Test
//	public void testRegister() {
//		BoardVO board = new BoardVO();
//		board.setTitle("Test로 작성하는 글");
//		board.setContent("Test로 만들고 있는 내용....");
//		board.setWriter("writer1234");
//		service.register(board);
//		log.info("bno : " + board);
//	}
	
//	@Test
//	public void testGetList() {
//		List<BoardVO> list = service.getList();
//		for (int i=0; i<list.size(); i++) {
//			log.info(list.get(i));
//		}
//	}
	
//	@Test
//	public void testUpdate() {
//		BoardVO board = service.get(3L);
//		if (board == null) {
//			return;
//		}
//		board.setTitle("제목 수정");
//		log.info("Modity result: " + service.modify(board));
//	}
	
//	@Test
//	public void testDelete() {
//		BoardVO board = service.get(5L);
//		if (board == null) {
//			return; //실제 보드넘버가 없으면 실행하지않음
//		}
//		log.info("Remove result: " + service.remove(board.getBno()));
//	}
	
	@Test
	public void testGetList() {
		List<BoardVO> list = service.getList(new Criteria(3,10));
		for (int i=0; i<list.size(); i++) {
			log.info(list.get(i));
		}
	}
}
