package odga.bt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import odga.bt.domain.Review;
import odga.bt.service.ReviewService;

@Log4j
@Controller
@RequestMapping("")
public class ReviewController {
	@Autowired
	private ReviewService service;

	@GetMapping("write")
	public String write() {	//리뷰 작성 페이지
		return "review/write"; 
	}
	@PostMapping("write")
	public String write(Review review) {	//리뷰 작성 포스팅
		service.insertS(review);
		
		log.info("글 id(SEQ) b_id : " + review.getB_id());
		log.info("작성자 b_writer : " + review.getB_writer());
		log.info("글 제목 b_subject : " + review.getB_subject());
		log.info("글 내용 b_content : " + review.getB_content());
		log.info("작성일 b_rdate : " + review.getB_rdate());
		log.info("카테고리 b_catgo : " + review.getB_catgo());
		log.info("좋아요수 b_like : " + review.getB_like());
		log.info("회원id m_id : " + review.getM_id());
		log.info("관리자id a_id : " + review.getA_id());
		
		return "review/write"; 
		//return "review/review"; << 기능구현 후 저장클릭시 "방금 작성한 글 디테일로 이동?" or "여행후기 페이지로 이동?" 선택!!
	}
	
	@GetMapping("review")
	public ModelAndView review(String b_catgo) {	//리퓨 리스팅 페이지
		List<Review> review = service.reviewS();
//		int countByCatgo = service.countByCatgoS(b_catgo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review/review");
		mv.addObject("review", review);
//		mv.addObject("countByCatgo", countByCatgo);
		
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		log.info("MAV review(): " + review);
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		
		return mv;
	}
	
//	@GetMapping("selectByWriter")
//	public ModelAndView selectByWriter(String b_writer) {	//리퓨 리스팅 페이지
//		List<Review> selectByWriter = service.selectByWriterS(b_writer);
//		
//		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//		log.info("MAV review(): " + selectByWriter);
//		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//		
//		return new ModelAndView("redirect:review/review", "review", selectByWriter);
//	}
	
//	@GetMapping("review")
//	public ModelAndView reviewF() { //리뷰 폼 샘플확인
//		List<Review> review = service.reviewS();
//		
//		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//		log.info("MAV review(): " + review);
//		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//		
//		return "review";
//	}
	
//	@GetMapping("/review_details")
//	public String review_detailsF() {
//		return "review/review_detailsF"; 
//	}   
	@GetMapping("/review_details")
	public ModelAndView review_details(long b_id) {
		return new ModelAndView("review/review_details", "review", service.getReviewS(b_id));
	}   
}
