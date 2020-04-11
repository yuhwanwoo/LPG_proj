package game.LPG.ground;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class groundDAOImpl implements groundDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<GroundDTO> searchGround(String search){
		List<GroundDTO> ground = sqlSession.selectList("game.LPG.ground.search", search);
		System.out.println("ground size in dao=>"+ground.size());
		for(int i =0;i<ground.size();i++){
			System.out.println("************groundDAO=>"+ground.get(i).toString());
		}
		return ground;
	}
	
	public GroundDTO groundDetail(String grdNo){
		GroundDTO ground = sqlSession.selectOne("game.LPG.ground.detail", grdNo);
		return ground;
	}
	
	@Override
	public int addGround(GroundDTO ground) {
		System.out.println("add ground=>"+ground.toString());
		ground.setNull();
		System.out.println("add ground set null=>"+ground.toString());
		int result = sqlSession.insert("game.LPG.ground.addGround", ground);
		return result;
	}

	@Override
	public int insertReview(GroundReviewDTO review) {
		review.setNull();
		int result=sqlSession.insert("game.LPG.ground.insertReview", review);
		return result;
	}

	@Override
	public GroundDTO showReviewPage(String mch_no) {
		GroundDTO ground = sqlSession.selectOne("game.LPG.ground.groundInfoForReview", mch_no);
		return ground;
	}

	@Override
	public int insertReserve(GroundReserveDTO reserve) {
		System.out.println(reserve.toString());
		int result = sqlSession.insert("game.LPG.ground.insertReserve",reserve);
		return result;
	}

	@Override
	public int reviewAvg(String grdNo) {
		int star=0;
		
		if(sqlSession.selectOne("game.LPG.ground.reviewAvg", grdNo)!=null){
			star = sqlSession.selectOne("game.LPG.ground.reviewAvg", grdNo);
		}
		return star;
	}
	
	public int countReview(String grdNo){
		int count = sqlSession.selectOne("game.LPG.ground.countReview", grdNo);
		return count;
		
	}
	
	
	
}
