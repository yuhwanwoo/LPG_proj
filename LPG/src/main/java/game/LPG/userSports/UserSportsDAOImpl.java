package game.LPG.userSports;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userSportsDAO")
public class UserSportsDAOImpl implements UserSportsDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	/*sqlSession.insert("game.LPG.userSports.insert", userSports);*/
	public UserSportsDTO insert(UserSportsDTO userSports) {
		int result = sqlSession.insert("game.LPG.userSports.insert", userSports); 
		if(result>0) {
			return userSports;
		}else {
			return null;
		}
		
	}

}
