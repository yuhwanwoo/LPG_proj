package game.LPG.user;

import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.userSports.UserSportsDTO;

public interface UserDAO {
	UserDTO login(UserDTO loginUserInfo);
	int signup(UserDTO user);
/*	boolean idCheck(String userId);
*/
	UserDTO update(UserDTO updateInfo);
	UserDTO findID(UserDTO findidInfo);
	UserDTO findPass(UserDTO findpassInfo);
	
	UserDTO joinIdCheck(UserDTO findidInfo);
	UserDTO updateUserPassword(UserDTO updateInfo);
	
	UserDTO myinfoPWCheck(UserDTO ppc);
	
	UserSportsDTO login2(UserDTO loginUserInfo);
	/*UserSportsDTO login3(UserDTO loginUserInfo);*/
}
