package game.LPG.soccerteam;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class TeamServiceImpl implements TeamService {
	@Autowired
	@Qualifier("teamDao")
	TeamDAO dao;
	
	//팀 생성
	@Override
	public int insert(TeamDTO dto) {
		System.out.println("팀생성 service들어가는거 "+dto);
		int result = 0;
		result = dao.insert(dto); 
		result += dao.insertTM(dto);		
		System.out.println("팀생성 service나오는거"+result);
		return result;
	}

	//팀원 신청현황
	@Override
	   public List<TeamMemberDTO> tmemberSearchList(String teamNo) {
	      List<TeamMemberDTO> list = null;
	      list = dao.tmemberList(teamNo);
	      return list;
	   }
	//가입 수락하기
	public void tmemberUpdate(String[] teamNos) {
        dao.tmemberUpdate(teamNos);
     }
     //가입 거절하기
     public void tmemreject(String[] teamNos) {
        dao.tmemreject(teamNos);
     }
     //가입 신청하기
     @Override
     public int teamapply(TeamMemberDTO dto) {
        return dao.teamapply(dto);
     }
	
	//팀명 중복검사
	@Override
	public boolean idCheck(String teamName) {
		return dao.idCheck(teamName);
	}
	
	//팀 전체 검색
	@Override
	public List<TeamDTO> teamSearchList() {
		List<TeamDTO> list = dao.teamList();
		return list;
	}
	
	//팀 조건 검색
	@Override
	public List<TeamDTO> searchTeam(TeamDTO tds){
		List<TeamDTO> list = null;
		if(tds.getTeamName()!=null) {
			list = dao.searchTeamName(tds);
		}else {
			list = dao.searchTeamTag(tds);
		}
		return list;
	}
	
	//팀 정보수정
	public int teamUpdate(TeamDTO dto) {
		System.out.println("service들감"+dto);
		int result =  dao.teamUpdate(dto);
		System.out.println("service나감"+result);
		return result;
	}
		
	//팀 정보보기
	public TeamDTO teaminfo(TeamDTO teaminfo) {
		System.out.println("=============service"+teaminfo);
		TeamDTO tm = dao.teamInfo(teaminfo);
		return tm;
	}
	public List<TeamMemberDTO> teaminfo(TeamMemberDTO tminfo) {
		List<TeamMemberDTO> tm = dao.teamInfo(tminfo);
		return tm;
	}
	
	//팀 정보보기 (로그인 등급)
	public TeamMemberDTO Grade(String sportsNo) {
		TeamMemberDTO grade = dao.Grade(sportsNo);
		return grade;
	}
	
	//팀원 개인정보보기
	public TeamMemberDTO timwonjungbo(TeamMemberDTO dto) {
		TeamMemberDTO meminfo = dao.timwonjungbo(dto);
		return meminfo;
	}
	
	//팀원 정보 수정하기
	public ArrayList<Integer> teamMemberUpdate(MemInfoModyDTO meminfo) {
		System.out.println("service input dto"+meminfo);
		ArrayList<Integer> result = dao.teamMemberUpdate(meminfo);
		System.out.println("service output"+result);
		return result;
	}
		
	//팀 엠블럼 사진 업로드
   FileOutputStream fos;
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
}
