package com.joongang.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.joongang.domain.Criteria;
import com.joongang.domain.ReplyVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {
	@Autowired
	private ReplyMapper mapper;
	private Long[] bnoArr = {2L, 3L, 4L, 13L, 14L};
	
//	@Test
//	public void testMapper() {
//		log.info(mapper);
//	}
	
//	@Test
//	public void testCreate() {
//		IntStream.rangeClosed(1, 10).forEach(i -> {
//			ReplyVO reply = new ReplyVO();
//			reply.setBno(bnoArr [i % 5]);
//			reply.setReply("댓글 테스트" + i);
//			reply.setReplyer("replyer" + i);
//			mapper.insert(reply);
//		});
		
//		for(int i=1; i<=10; i++) {
//			ReplyVO reply = new ReplyVO();
//			reply.setBno(bnoArr[i % 5]);
//			reply.setReply("댓글 테스트" + i);
//			reply.setReplyer("replyer" + i);
//			mapper.insert(reply);
//		}
//		
//	}
	
//	@Test
//	public void testDelete() {
//		   int count = mapper.delete(2L);
//		   log.info("Delete count: " + count);
//	   }
	
//	@Test	
//	public void testRead() {
//		   Long rno = 15L;
//		   ReplyVO reply = mapper.read(rno);
//		   log.info(reply);
//	   }
	
//	@Test
//	public void testUpdate() {
//		   ReplyVO reply = new ReplyVO();
//		   reply.setReply("댓글수정ee");
//		   ReplyVO reply = mapper.read(5L);
//		   reply.setReply("수정댓글...11");
//		   
//		   int count = mapper.update(reply);
//		   log.info("UPDATE COUNT: " + count);
//	   }
	
//	@Test
//	public void testList() {
//		Criteria criteria = new Criteria();
//		List<ReplyVO> list = mapper.getListWithPaging(criteria, 3L);
//		list.forEach(reply -> log.info(reply));
//		
//		for(int i=0; i<list.size(); i++) {
//			log.info(list.get(i));
//		}
//	}
	
	@Test public void testPaging() {
		Criteria criteria = new Criteria();
		criteria.setPageNum(2);
		criteria.setAmount(10);
		criteria.calOffset();
		List<ReplyVO> list = mapper.getListWithPaging(criteria, 3L);
		for (int i=0; i<list.size(); i++) {
			log.info(list.get(i));
		}
	}
}
