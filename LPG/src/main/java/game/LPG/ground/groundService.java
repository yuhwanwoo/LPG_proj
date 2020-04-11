package game.LPG.ground;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface groundService {
	List<GroundDTO> searchGround(String search);
	int addGround(GroundDTO ground);
	void upload(MultipartFile file,String path,String fileName);
	int insertReview(GroundReviewDTO review);
	GroundDTO showReviewPage(String mch_no);
	int insertReserve(GroundReserveDTO reserve);
	int reviewAvg(String grdno);
	GroundDTO groundDetail(String grdno);
	int countReview(String grdno);
}
