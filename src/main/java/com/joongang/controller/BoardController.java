package com.joongang.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.joongang.domain.BoardAttachVO;
import com.joongang.domain.BoardVO;
import com.joongang.domain.Criteria;
import com.joongang.domain.PageDTO;
import com.joongang.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	private BoardService service;
	
	@GetMapping("/list")
	public void list(Criteria criteria, Model model) { //자바에서 jsp로 뭔가 넘길때 모델 쓴대 /리스트로 들어가면 jsp에선 foreach 사용?
		log.info("list" + criteria);
		model.addAttribute("list", service.getList(criteria));
		
		int total = service.getTotalCount(criteria);
		log.info("total: " + total);
		model.addAttribute("pageMaker", new PageDTO(criteria,total));
	}
	
	@GetMapping("/register")
	@PreAuthorize("isAuthenticated()") //인증됐는지 확인 로그인됐는지 안됐는지
	public void register() {
		log.info("register");
	}
	
	@PostMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register: " + board.getBno());
		if(board.getAttachList() != null) {
			board.getAttachList().forEach(attach -> log.info(attach));
		}
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno()); //FlashAttribute: 일회성. 한번 보내고 나면 값 저장하지않음
		return "redirect:/board/list"; //redirect: 경로 변경
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bno")Long bno,
			@ModelAttribute("criteria") Criteria criteria,
			Model model) {
		log.info("/get or modify");
		model.addAttribute("board", service.get(bno));
	}
	
	@PreAuthorize("principal.username == #board.writer")
	@PostMapping("/modify")
	public String modify(BoardVO board, Criteria criteria,
			RedirectAttributes rttr) {
		log.info("modify: " + board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
//		rttr.addAttribute("pageNum", criteria.getPageNum());
//		rttr.addAttribute("amount", criteria.getAmount());
//		rttr.addAttribute("type", criteria.getType());
//		rttr.addAttribute("keyword", criteria.getKeyword());
		
		
		return "redirect:/board/list" + criteria.getListLink();
	}
	
	@PreAuthorize("principal.username == #writer")
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, Criteria criteria, 
			@RequestParam("writer") String writer, RedirectAttributes rttr) {
		log.info("Remove :" + bno);
		List<BoardAttachVO> attachList = service.getAttachList(bno);
		if(service.remove(bno)) {
			deleteFiles(attachList);
			rttr.addFlashAttribute("result", "success");
		}
//		rttr.addAttribute("pageNum", criteria.getPageNum());
//		rttr.addAttribute("amount", criteria.getAmount());
//		rttr.addAttribute("type", criteria.getType());
//		rttr.addAttribute("keyword", criteria.getKeyword());
		
		return "redirect:/board/list" + criteria.getListLink();
	}
	
	private void deleteFiles(List<BoardAttachVO> attachList) {
		if (attachList == null || attachList.size() == 0) {
			return;
		}
		log.info("delete attach files................");
		log.info(attachList);
		attachList.forEach(attach -> {
			try {
				Path file = Paths.get(
					"C:\\upload\\" + attach.getUploadPath() + "\\" + attach.getUuid() +"_"+ attach.getFileName());
				Files.deleteIfExists(file);
				if (Files.probeContentType(file).startsWith("image")) {
					Path thumbNail = Paths.get(
						"C:\\upload\\" + attach.getUploadPath() + "\\s_" + attach.getUuid() + "_" + attach.getFileName());
					Files.delete(thumbNail);
				}
			} catch (Exception e) {
				log.error("delete file error" + e.getMessage());
			}
		});
	}

	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long bno){
		return new ResponseEntity<>(service.getAttachList(bno), HttpStatus.OK);
	}
	
}
