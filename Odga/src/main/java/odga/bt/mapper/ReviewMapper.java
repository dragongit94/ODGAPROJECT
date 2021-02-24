package odga.bt.mapper;

import java.util.List;

import odga.bt.domain.Review;

public interface ReviewMapper {
	List<Review> review();
	Review getReview(long b_id);
	List<Review> selectByWriter(String b_writer);
	void insert(Review review);
	
	int countByCatgo(String catgo);
}
