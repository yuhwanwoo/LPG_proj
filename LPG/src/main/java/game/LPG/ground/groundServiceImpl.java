package game.LPG.ground;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class groundServiceImpl implements groundService {
	@Autowired
	groundDAO dao;

	@Override
	public List<GroundDTO> searchGround(String search){
		
		return dao.searchGround(search);
	}
	@Override
	public int addGround(GroundDTO ground) {
		int result = dao.addGround(ground);
		return result;
	}
	
	FileOutputStream fos;
	@Override
	public void upload(MultipartFile file,String path,String fileName) {
		try {
			byte[] data = file.getBytes();
			System.out.println(data+"88888888888888888888888888888888888888");
			fos = new FileOutputStream(path+File.separator+fileName);
			fos.write(data);
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				if(fos!=null)fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@Override
	public int insertReview(GroundReviewDTO review) {
		int result = dao.insertReview(review);
		return result;
	}

	@Override
	public GroundDTO showReviewPage(String mch_no) {
		GroundDTO ground = dao.showReviewPage(mch_no);
		return ground;
	}

	@Override
	public int insertReserve(GroundReserveDTO reserve) {
		String[] array = reserve.getGrdrsvtime().split(":");
		reserve.setGrdrsvStartTime(array[0]);
		reserve.setGrdrsvEndTime((array[1].split("~"))[1]);
		int result= dao.insertReserve(reserve);
		return result;
	}
	
	@Override
	public int reviewAvg(String grdNo) {
		int star = dao.reviewAvg(grdNo);
		return star;
	}
	
	@Override
	public GroundDTO groundDetail(String grdNo) {
		GroundDTO ground = dao.groundDetail(grdNo);
		ground.setNull();
		
		return ground;
	}
	
	public int countReview(String grdNo){
		int count = dao.countReview(grdNo);
		return count;
	}
	
	
	
}
