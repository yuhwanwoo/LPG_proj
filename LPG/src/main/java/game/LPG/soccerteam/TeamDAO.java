package game.LPG.soccerteam;

import java.util.ArrayList;
import java.util.List;

public interface TeamDAO {

	//팀 생성
	int insert(TeamDTO dto);
	int insertTM(TeamDTO dto);
	//팀원 신청현황
	List<TeamMemberDTO> tmemberList(String teamNo);
	
	//팀원 신청 수락
	void tmemberUpdate(String[] teamNos);
	//팀 가입신청하기
	int teamapply(TeamMemberDTO dto);
	//팀 신청 거절
	void tmemreject(String[] teamNos);
	
	//팀 전체 목록
	List<TeamDTO> teamList();
	
	//팀명 중복검사
	boolean idCheck(String teamName);
	
	//팀 3개 태그로 검색
	List<TeamDTO> searchTeamTag(TeamDTO tds);
	
	//팀 이름으로 검색
	List<TeamDTO> searchTeamName(TeamDTO tds);
	
	//팀 정보수정
	int teamUpdate(TeamDTO dto);
	
	//팀 정보보기
	TeamDTO teamInfo(TeamDTO teaminfo);
	List<TeamMemberDTO> teamInfo(TeamMemberDTO tminfo);
	
	//팀 정보보기 (로그인 등급)
	TeamMemberDTO Grade(String sportsNo);
	
	//팀원 정보 수정
	ArrayList<Integer> teamMemberUpdate(MemInfoModyDTO meminfo);
	
	//팀원 개인정보보기
	TeamMemberDTO timwonjungbo(TeamMemberDTO dto);
}
