package game.LPG.sportsMatch;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import game.LPG.ground.GroundDTO;
import game.LPG.soccerteam.TeamDTO;
import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.userSports.UserSportsDTO;

@Repository("sportsMatchDAO")
public class SportsMatchDAOImpl implements SportsMatchDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(SportsMatchDTO sportsMatch) {
		System.out.println(sportsMatch);
		int result = sqlSession.insert("game.LPG.sportsMatch.insert", sportsMatch);
		System.out.println("insert"+result);
		return result;
	}
	
	@Override
	public int insertIndiv(SportsMatchDTO sportsMatch) {
		System.out.println(sportsMatch);
		int result = sqlSession.insert("game.LPG.sportsMatch.insertIndiv", sportsMatch);
		System.out.println("indivdivdivid"+result);
		return result;
	}


	@Override
	public int insertTeam(SportsMatchDTO sportsMatch) {
		System.out.println(sportsMatch);
		int result = sqlSession.insert("game.LPG.sportsMatch.insertTeam", sportsMatch);
		System.out.println("teamteaemateam"+result);
		return result;
		
	}
	
	@Override
	public List<MatchDetailDTO> matchlist(MatchSelectDTO ms) {
		List<MatchDetailDTO> detail = new ArrayList<MatchDetailDTO>();
		List<SportsMatchDTO> list = null;
		System.out.println(ms);
		if((ms.getMchType().equals("0"))) {
			list = sqlSession.selectList("game.LPG.sportsMatch.matchListTeam", ms);
			for(int i=0;i<list.size();i++) {
				SportsMatchDTO sm = list.get(i);
				String mchNo = sm.getMchNo();
				System.out.println(mchNo);
				List<TeamDTO> team = sqlSession.selectList("game.LPG.sportsMatch.matchTeamDetailT", mchNo);
				detail.add(new MatchDetailDTO(sm, null, team));
			}
			System.out.println(detail);
		} else {
			list = sqlSession.selectList("game.LPG.sportsMatch.matchListIndiv", ms);
			for(int i=0;i<list.size();i++) {
				SportsMatchDTO sm = list.get(i);
				String mchNo = sm.getMchNo();
				System.out.println(mchNo);
				GroundDTO ground = sqlSession.selectOne("game.LPG.sportsMatch.matchIndivDetailG", mchNo);
				System.out.println("dao:"+ground);
				detail.add(new MatchDetailDTO(sm, ground, null));
			}
		}
		System.out.println(list);
		return detail;
	}
	@Override
	public MatchDetailDTO MatchIndvDetail(String mchNo) {
		SportsMatchDTO sm = (SportsMatchDTO) sqlSession.selectOne("game.LPG.sportsMatch.matchIndivDetailM", mchNo);
		GroundDTO grd = sqlSession.selectOne("game.LPG.sportsMatch.matchTeamDetailG", mchNo);
		MatchDetailDTO detail = new MatchDetailDTO(sm, grd, null);
		return detail;
	}
	public MatchDetailDTO MatchTeamDetail(String mchNo) {
		SportsMatchDTO sm = sqlSession.selectOne("game.LPG.sportsMatch.matchTeamDetailM", mchNo);
		GroundDTO grd = sqlSession.selectOne("game.LPG.sportsMatch.matchTeamDetailG", mchNo);
		List<TeamDTO> team = sqlSession.selectList("game.LPG.sportsMatch.matchTeamDetailT", mchNo);
		MatchDetailDTO detail = new MatchDetailDTO(sm, grd, team, null);
		System.out.println("dao=>"+detail);
		return detail;
	}
	
	@Override
	public int backUpNumAdd(SportsMatchTeamDTO smt) {
		System.out.println("dao:"+smt);
		int result = sqlSession.update("game.LPG.sportsMatch.backUpNum", smt);
		System.out.println("dao:"+result);
		return result;
	}

	@Override
	public TeamMemberDTO teamNoSearch(UserSportsDTO su) {
		return sqlSession.selectOne("game.LPG.sportsMatch.TeamNoSearch", su);
	}
	
	@Override
	public int matchJoinTeam(SportsMatchTeamDTO smt) {
		System.out.println("dao:"+smt);
		int result = sqlSession.insert("game.LPG.sportsMatch.matchJoinTeam", smt);
		System.out.println(result);
		return result;
	}
	
	@Override
	public int matchJoinIndiv(SportsMatchTeamDTO smt) {
		System.out.println("dao:"+smt);
		int result = sqlSession.insert("game.LPG.sportsMatch.matchJoinIndiv", smt);
		System.out.println(result);
		return result;
	}

	@Override
	public SportsMatchDTO matchChange(String mchNo) {
		System.out.println("dao:"+mchNo);
		SportsMatchDTO sm = sqlSession.selectOne("game.LPG.sportsMatch.mchNoSearch", mchNo);
		System.out.println("dao:"+sm);
		return sm;
	}

	@Override
	public int matchChangeOk(SportsMatchDTO sportsMatch) {
		System.out.println(sportsMatch);
		int result = sqlSession.update("game.LPG.sportsMatch.matchChage", sportsMatch);
		System.out.println(result);
		return result;
	}

	@Override
	public int matchDelete(String mchNo) {
		return sqlSession.delete("game.LPG.sportsMatch.matchDelete", mchNo);
	}
}
