package game.LPG.paging;

import java.util.List;

import game.LPG.userSports.UserSportsDTO;

public interface PagingService {
	public PagingDTO set(UserSportsDTO su, String pagenum,String contentnum);
	public List<Integer> testlist(int pagenum, int contentnum);
	public int testcount(UserSportsDTO su);
	public List<Integer> indivlist(int pagenum, int contentnum);
	public int indivcount();
	
	
}
