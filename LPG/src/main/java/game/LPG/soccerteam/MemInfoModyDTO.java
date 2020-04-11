package game.LPG.soccerteam;

import java.util.ArrayList;

public class MemInfoModyDTO {

	ArrayList<TeamMemberDTO> meminfo;
	
	public MemInfoModyDTO() {
		
	}

	public MemInfoModyDTO(ArrayList<TeamMemberDTO> meminfo) {
		super();
		this.meminfo = meminfo;
	}

	public ArrayList<TeamMemberDTO> getMeminfo() {
		return meminfo;
	}

	public void setMeminfo(ArrayList<TeamMemberDTO> meminfo) {
		this.meminfo = meminfo;
	}

	@Override
	public String toString() {
		return "MemInfoModyDTO [meminfo=" + meminfo + "]";
	}
	
	
}
