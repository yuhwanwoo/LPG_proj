package game.LPG.soccerteam;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface TeamService {

	//팀 생성
	int insert(TeamDTO dto);
	//팀원 신청현황
	List<TeamMemberDTO> tmemberSearchList(String teamNo);
	//팀원 수락하기
	void tmemberUpdate(String[] teamNos);
	//팀원 거절하기
    void tmemreject(String[] teamNos);
	//팀 가입 신청하기
    int teamapply(TeamMemberDTO dto);
    
	//팀명 중복검사
	boolean idCheck(String teamName);
	
	//팀 전체 검색
	List<TeamDTO> teamSearchList();
	
	//팀 조건 검색
	List<TeamDTO> searchTeam(TeamDTO tds);
	
	//팀 정보수정
	int teamUpdate(TeamDTO dto);
	
	//팀 정보보기
	TeamDTO teaminfo(TeamDTO teaminfo);
	List<TeamMemberDTO> teaminfo(TeamMemberDTO tminfo);
	
	//팀 정보보기 (로그인 등급)
	TeamMemberDTO Grade(String sportsNo);
	
	//팀원 정보 수정하기
	ArrayList<Integer> teamMemberUpdate(MemInfoModyDTO meminfo);
	
	//팀원 개인정보보기
	TeamMemberDTO timwonjungbo(TeamMemberDTO dto);
	
	//팀 엠블럼 수정
	void upload(MultipartFile file,String path,String fileName);

}
