package game.LPG.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession ses = request.getSession(false);
		if(ses!=null) {
			UserDTO user = (UserDTO)ses.getAttribute("loginUserInfo");
			if(user==null) {
				response.sendRedirect("/LPG/user/login.do");
				return false;
			}
		}
		return true;
	}
	
}
