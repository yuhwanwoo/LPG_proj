package game.LPG.point;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;

import game.LPG.user.UserDTO;
@Controller
public class PointController {
	@Autowired
	PointService service;
	//내 포인트 전체 조회     
	@RequestMapping(value="/point/search_mypoint.do",method={RequestMethod.POST,RequestMethod.GET},produces="application/json;charset=utf-8")
	
	public @ResponseBody List<PointDTO> SearchView(HttpSession session, HttpServletRequest request, Model model, PointDTO point) throws JsonProcessingException {
		System.out.println("controller"+point);
		
		String pointCheck = request.getParameter("pointCheck");
		point.setPointCheck(pointCheck);
		
		List<PointDTO> list = service.ponintList(point);
		
		return list;
	}
	
	
	//내 포인트 전체 조회
		@RequestMapping(value="/point/mypoint.do",method={RequestMethod.POST,RequestMethod.GET})
		public String goPoint(){
			System.out.println("포인트조회 페이지입니다.");
			return "mypoint";
		}
		
}
