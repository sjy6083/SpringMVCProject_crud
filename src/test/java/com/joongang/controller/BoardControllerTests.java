package com.joongang.controller;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;

import com.joongang.domain.BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
@WebAppConfiguration
public class BoardControllerTests {

	@Autowired
	private WebApplicationContext context;
	private MockMvc mockMvc; //실제 jsp환경에서 하는거처럼 테스트하게 해줌
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}
	
//	@Test
//	public void testList() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders
//		.get("/board/list"))
//		.andReturn().getModelAndView().getModelMap()); //getModelMap(): 데이터 가져와서 보여줄때
//	}
	
//	@Test
//	public void testRegister() throws Exception {
//		String resultPage = mockMvc
//		.perform(MockMvcRequestBuilders.post("/board/register")
//			.param("title", "test...새글")
//			.param("content", "새 컨텐트는 새글에...")
//			.param("writer", "new writer"))
//		.andReturn().getModelAndView()
//		.getViewName(); //getViewName():리턴값 뷰이름 가져와서ㅏ 보여줌
//		log.info(resultPage);
//	}
	
//	@Test
//	public void testGet() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders
//				.get("/board/get")
//				.param("bno", "2"))
//				.andReturn().getModelAndView().getModelMap());
//	}
	
//	@Test
//	public void testModify() throws Exception {
//		String resultPage = mockMvc
//		.perform(MockMvcRequestBuilders.post("/board/modify")
//			.param("bno", "11")
//			.param("title", "타이틀수정")
//			.param("content", "컨텐츠 수정")
//			.param("writer", "수정writer"))
//		.andReturn().getModelAndView().getViewName();
//		log.info(resultPage);
//	}
	
//	@Test
//	public void testRemove() throws Exception {
//		String resultPage = mockMvc
//		.perform(MockMvcRequestBuilders.post("/board/remove")
//			.param("bno", "11"))
//		.andReturn().getModelAndView().getViewName();
//		log.info(resultPage);
//	}
	
	@SuppressWarnings("unchecked")
	@Test
	public void testListPaging() throws Exception {
		ModelMap mm = mockMvc
			.perform(MockMvcRequestBuilders
				.get("/board/list")
				.param("pageNum", "1")
				.param("amount", "10"))
			.andReturn().getModelAndView().getModelMap();
		Object obj = mm.get("list");
		if(obj instanceof List) {
			List<BoardVO> list = (List<BoardVO>)obj;
			list.forEach(board->log.info(board));
		}
				
	}
}
