package game.LPG.paging;

import java.util.List;

import game.LPG.userSports.UserSportsDTO;

public interface PagingDAO {
	public List<Integer> testlist(int pagenum, int contentnum);
	public int testcount(UserSportsDTO su);
	public List<Integer> indivlist(int pagenum, int contentnum);
	public int indivcount();
	
}
