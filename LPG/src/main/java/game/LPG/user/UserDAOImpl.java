package game.LPG.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.userSports.UserSportsDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public UserDTO login(UserDTO loginUserInfo) {
		UserDTO dto = sqlSession.selectOne("game.LPG.user.login", loginUserInfo);
		System.out.println(dto);
		return dto;
	}
	@Override
	public int signup(UserDTO signupInfo) {
		System.out.println("dao111"+signupInfo);
		return sqlSession.insert("game.LPG.user.signup",signupInfo);
	}
	
	@Override
	public UserDTO findID(UserDTO findidInfo) {
		System.out.println("DAO=>"+findidInfo);
		UserDTO dto = sqlSession.selectOne("game.LPG.user.findid", findidInfo );
		return dto;
	}
	@Override
	public UserDTO update(UserDTO updateInfo) {
		System.out.println("dao업데이트"+updateInfo);
		int result=sqlSession.update("game.LPG.user.update", updateInfo);
		System.out.println("result of update() in UserDAOImpl"+result);
		return sqlSession.selectOne("game.LPG.user.getUserInfo",updateInfo);
	}
	@Override
	public UserDTO findPass(UserDTO findpassInfo) {
		System.out.println("비번찾기"+findpassInfo);
		UserDTO dto = sqlSession.selectOne("game.LPG.user.findpass", findpassInfo);
		return dto;
	}
	
	
	@Override
	public UserDTO joinIdCheck(UserDTO findidInfo) {
		System.out.println("회원가입 아이디 중복 검사 DAO"+findidInfo);
		UserDTO dto = sqlSession.selectOne("game.LPG.user.joinIdCheck", findidInfo);
		return dto;
	}
	
	@Override
	public UserDTO updateUserPassword(UserDTO updateInfo) {
		System.out.println("비밀번호 찾기 - 비밀번호 수정 DAO"+updateInfo);
		UserDTO dto = sqlSession.selectOne("game.LPG.user.updateUserPassword", updateInfo);
		return dto;
	}
	@Override
	public UserDTO myinfoPWCheck(UserDTO ppc) {
		System.out.println("dto"+ppc);
		UserDTO dto = sqlSession.selectOne("game.LPG.user.myinfoPWCheck", ppc);
		return dto;
	}
	@Override
	public UserSportsDTO login2(UserDTO loginUserInfo) {
		UserSportsDTO su = sqlSession.selectOne("game.LPG.user.login2", loginUserInfo);
		System.out.println(su);
		return su;
	}
	/*@Override
	public UserSportsDTO login3(UserDTO loginUserInfo) {
		UserSportsDTO su = sqlSession.selectOne("game.LPG.user.login3", loginUserInfo);
		System.out.println(su);
		return null;
	}*/
}
