package odga.bt.service;

import java.util.List;

import odga.bt.domain.Review;

public interface ReviewService {
	List<Review> reviewS();
	Review getReviewS(long b_id);
	List<Review> selectByWriterS(String b_writer);
	void insertS(Review review);
	
	int countByCatgoS(String b_catgo);
}
