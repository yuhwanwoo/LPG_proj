package game.LPG.soccerteam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("teamDao")
public class TeamDAOImpl implements TeamDAO {
	@Autowired
	SqlSession sqlSession;
	
	//팀 생성
	@Override
	public int insert(TeamDTO dto) {
		return sqlSession.insert("game.LPG.soccerteam.teamcreate", dto);
	}
	@Override
	public int insertTM(TeamDTO dto) {
		return sqlSession.insert("game.LPG.soccerteam.teamcreate2", dto);
	}
	//팀원 신청현황
	@Override
	   public List<TeamMemberDTO> tmemberList(String teamNo) {
	      return sqlSession.selectList("game.LPG.soccerteam.tmemberlist", teamNo);
	   }
	//팀원 신청 수락하기
	public void tmemberUpdate(String[] teamNos) {
        for(int i =0; i<teamNos.length; i++) {
           int teamNo = Integer.parseInt(teamNos[i]);
           System.out.println("~~~~~~~~~"+teamNo);
           sqlSession.update("game.LPG.soccerteam.tmemberapprove", teamNo);
        }
     }
     //팀원 거절하기
     public void tmemreject(String[] teamNos) {
        for(int i =0; i<teamNos.length; i++) {
           int teamNo = Integer.parseInt(teamNos[i]);
           sqlSession.update("game.LPG.soccerteam.tmemberdeny", teamNo);
        }
     }
     //팀 가입 신청하기
     public int teamapply(TeamMemberDTO dto) {
    	 System.out.println("팀 가입 dao"+dto);
    	 int a = sqlSession.insert("game.LPG.soccerteam.teamapply", dto);
    	 System.out.println("팀 가입 dao아웃"+a);
        return a;
     }
	
	//팀명 체크
	@Override
	public boolean idCheck(String teamName) {
		boolean result = false;
		TeamDTO team = sqlSession.selectOne("game.LPG.soccerteam.idcheck", teamName);
		if(team!=null) {
			result = true;
		}
		return result;
	}
	
	//팀 전체 조회
	@Override
	public List<TeamDTO> teamList() {
		return sqlSession.selectList("game.LPG.soccerteam.teamlistall");
	}
	
	//팀 3개 태그로 검색
	@Override
	public List<TeamDTO> searchTeamTag(TeamDTO tds){
		Map<String, String> map = new HashMap<String, String>();
		map.put("teamGender", tds.getTeamGender());
		map.put("teamAge", tds.getTeamAge());
		map.put("teamLocation", tds.getTeamLocation());
		return sqlSession.selectList("game.LPG.soccerteam.teamcheckbox", map);
	}
	
	//팀명으로 검색
	@Override
	public List<TeamDTO> searchTeamName(TeamDTO tds){
		List<TeamDTO> list = sqlSession.selectList("game.LPG.soccerteam.teamnamesearch", tds.getTeamName());
		return list;
	}
	
	//팀 정보수정
		public int teamUpdate(TeamDTO dto) {
			System.out.println("dao들"+dto);
			int result = sqlSession.update("game.LPG.soccerteam.teamupdate", dto);
			System.out.println("dao나감"+result);
			return result;
		}
	
	//팀 정보 보기
	public TeamDTO teamInfo(TeamDTO teaminfo) {
		System.out.println("===============================DAO"+teaminfo);
		TeamDTO team = sqlSession.selectOne("game.LPG.soccerteam.teaminfo", teaminfo);
		if(team.getTeamUniform()==null) {
			team.setTeamUniform("");
		}
		if(team.getTeamIntroduce()==null) {
			team.setTeamIntroduce("팀 소개글 : ");
		}
		if(team.getTeamManner()==null) {
			team.setTeamManner("매너 : ");
		}
		if(team.getTeamStrategy()==null) {
			team.setTeamStrategy("000");
		}
		team.setCount(sqlSession.selectOne("game.LPG.soccerteam.count", teaminfo));
		return team;
	}
	//팀 정보보기 (로그인 등급)
	public TeamMemberDTO Grade(String sportsNo) {
		TeamMemberDTO grade = sqlSession.selectOne("game.LPG.soccerteam.mygrade", sportsNo);
		System.out.println("daoTM"+grade);
		return grade;
	}
	
	//팀원 개인정보보기
	public TeamMemberDTO timwonjungbo(TeamMemberDTO dto) {
		TeamMemberDTO gain = sqlSession.selectOne("game.LPG.soccerteam.gaininfo", dto);
		if(gain.getBackNum()==null) {
			gain.setBackNum("0");
		}
		if(gain.getTmGrade()==null) {
			gain.setTmGrade("팀원");
		}
		if(gain.getTmTend()==null) {
			gain.setTmTend("수비적");
		}
		return gain;
	}
	
	//팀원 수 
	public List<TeamMemberDTO> teamInfo(TeamMemberDTO tminfo) {
		List<TeamMemberDTO> tm = sqlSession.selectList("game.LPG.soccerteam.teammemberinfo", tminfo);
		return tm;
	}
	
	//팀원 정보 수정
	public ArrayList<Integer> teamMemberUpdate(MemInfoModyDTO memInfo) {
		System.out.println("dao input dto"+memInfo);
		
		ArrayList<TeamMemberDTO> mem = memInfo.meminfo;
		
		ArrayList<Integer> resultList = new ArrayList<Integer>();

		for (TeamMemberDTO team : mem) {
			resultList.add(sqlSession.update("game.LPG.soccerteam.teammemupdate", team));
		}

		return resultList;
	}
}
