package game.LPG.point;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import game.LPG.user.UserDTO;
@Repository("PointDao")
public class PointDAOImlp implements PointDAO {
	@Autowired
	SqlSession sqlsession;
	@Override
	public List<PointDTO> ponintList(PointDTO point) {
		System.out.println("dao"+point);
		
		if(point.getPointCheck().equals("2")) {
			System.out.println("dddd");
			return sqlsession.selectList("game.LPG.point.pointALL", point);
			
		}else if(point.getPointCheck().equals("1")) {
			System.out.println("aaaa");
			return sqlsession.selectList("game.LPG.point.pointUSE", point);
			
		}else if(point.getPointCheck().equals("0")) {
			return sqlsession.selectList("game.LPG.point.pointCHARGE", point);
			
		}else {
			return null;
		}
	}
}
