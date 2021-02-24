package odga.bt.persistence;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import lombok.extern.log4j.Log4j;
import odga.bt.domain.Review;
import odga.bt.mapper.ReviewMapper;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ReviewMapperTests {
	/*@Autowired
	private AddressDao addressDao;
	*/
	/*
	@Inject
	private AddressDao addressDao;
	*/
	
	//@Resource(name="addressDao") ?삉?뒗 @Resource
	@Resource
	private ReviewMapper reviewMapper;
	
	@Test
	public void testList() {
		List<Review> list = reviewMapper.review();
	    log.info("#list(1): " + list);
	}
	
	@Test
	public void testInsert() {
		Review review = new Review(2, "유민이", "우왕", "안냐세여", null, "여행후기", 0, 2, -1);
		reviewMapper.insert(review);
		
		List<Review> list = reviewMapper.review();
	    log.info("#list(2): " + list);
	}
	
//	@Test
//	public void testDelete() {
//		reviewMapper.delete(3);
//		List<Review> list = reviewMapper.list();
//	    log.info("#list(3): " + list);
//	}
}
