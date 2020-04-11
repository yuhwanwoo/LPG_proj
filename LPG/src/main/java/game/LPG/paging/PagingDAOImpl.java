package game.LPG.paging;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import game.LPG.userSports.UserSportsDTO;

@Repository("pagingDAO")
public class PagingDAOImpl implements PagingDAO {
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public List<Integer> testlist(int pagenum, int contentnum) {
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("pagenum", pagenum);
		map.put("contentnum", contentnum);
		
		return sqlSession.selectList("game.LPG.paging.testlist", map);
	}

	@Override
	public int testcount(UserSportsDTO su) {
		
		return sqlSession.selectOne("game.LPG.paging.testcount");
	}

	@Override
	public List<Integer> indivlist(int pagenum, int contentnum) {
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("pagenum", pagenum);
		map.put("contentnum", contentnum);
		
		return sqlSession.selectList("game.LPG.paging.indivlist", map);
	}

	@Override
	public int indivcount() {
		return sqlSession.selectOne("game.LPG.paging.indivcount");
	}
	
	


}
