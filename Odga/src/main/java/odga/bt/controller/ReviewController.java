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
	public String write() {	//���� �ۼ� ������
		return "review/write"; 
	}
	@PostMapping("write")
	public String write(Review review) {	//���� �ۼ� ������
		service.insertS(review);
		
		log.info("�� id(SEQ) b_id : " + review.getB_id());
		log.info("�ۼ��� b_writer : " + review.getB_writer());
		log.info("�� ���� b_subject : " + review.getB_subject());
		log.info("�� ���� b_content : " + review.getB_content());
		log.info("�ۼ��� b_rdate : " + review.getB_rdate());
		log.info("ī�װ� b_catgo : " + review.getB_catgo());
		log.info("���ƿ�� b_like : " + review.getB_like());
		log.info("ȸ��id m_id : " + review.getM_id());
		log.info("������id a_id : " + review.getA_id());
		
		return "review/write"; 
		//return "review/review"; << ��ɱ��� �� ����Ŭ���� "��� �ۼ��� �� �����Ϸ� �̵�?" or "�����ı� �������� �̵�?" ����!!
	}
	
	@GetMapping("review")
	public ModelAndView review(String b_catgo) {	//��ǻ ������ ������
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
//	public ModelAndView selectByWriter(String b_writer) {	//��ǻ ������ ������
//		List<Review> selectByWriter = service.selectByWriterS(b_writer);
//		
//		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//		log.info("MAV review(): " + selectByWriter);
//		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//		
//		return new ModelAndView("redirect:review/review", "review", selectByWriter);
//	}
	
//	@GetMapping("review")
//	public ModelAndView reviewF() { //���� �� ����Ȯ��
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
