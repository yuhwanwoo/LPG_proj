package game.LPG.ground;

import java.util.List;

public interface groundDAO {
	List<GroundDTO> searchGround(String search);
	int addGround(GroundDTO ground);
	int insertReview(GroundReviewDTO review);
	GroundDTO showReviewPage(String mch_no);
	int insertReserve(GroundReserveDTO reserve);
	int reviewAvg(String grdno);
	GroundDTO groundDetail(String grdno);
	int countReview(String grdno);
}
