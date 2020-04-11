package game.LPG.ground;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import game.LPG.user.UserDTO;
import game.LPG.userSports.UserSportsDTO;

@Controller
public class groundController {

	@Autowired
	groundService service;

	/* search */
	/* main */
	@RequestMapping("/ground/map/main.do")
	public ModelAndView mapMain(String pageNo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageNo", pageNo);
		mav.addObject("pageType", "main");
		mav.addObject("base", "map");
		mav.setViewName("mapMain");
		return mav;
	}

	@RequestMapping("/ground/calendar/main.do")
	public ModelAndView calMain() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageType", "main");
		mav.addObject("base", "calendar");
		mav.setViewName("calMain");
		return mav;
	}

	/* list */
	@RequestMapping("/ground/map/list.do")
	public ModelAndView mapList(String search, String pageNo) {
		ModelAndView mav = new ModelAndView();
		System.out.println("search=>" + search);
		ArrayList<GroundAPIDTO> apiArr=new ArrayList<GroundAPIDTO>();
		connectToAPI api = new connectToAPI();

		jsonParser jp = new jsonParser();

		String jsonResult = "";
		if (search.contains("풋살") || search.contains("축구")) {
			jsonResult = api.getJson(search, 40);
		} else {
			jsonResult = api.getJson("", 40);
		}

		apiArr = jp.parseJson(jsonResult);
		System.out.println("apiArr size" + apiArr.size());
		
		
		List<GroundDTO> groundList = service.searchGround(search);
		System.out.println("groundList size" + groundList.size());

		/*
		 * for (int i=0;i<groundList.size();i++) {
		 * System.out.println("maplist ground List=>"+groundList.get(i).toString
		 * ()); }
		 */

		mav.addObject("groundList", groundList);
		mav.addObject("apiGroundList", apiArr);
		
		mav.addObject("pageNo",pageNo);
		mav.addObject("pageType", "result");
		mav.addObject("base", "map");
		mav.setViewName("mapList");
		return mav;
	}

	@RequestMapping("/ground/calendar/list.do")
	public ModelAndView calList(String search) {
		ModelAndView mav = new ModelAndView();

		List<GroundDTO> groundList = service.searchGround(search);

		mav.addObject("groundList", groundList);

		mav.addObject("pageType", "result");
		mav.addObject("base", "calendar");
		mav.setViewName("calList");
		return mav;
	}

	/* detail */
	@RequestMapping("/ground/map/detail.do")
	public ModelAndView mapDetail(String grdNo, String pageNo) {
		System.out.println("grdNo detail: " + grdNo);
		ModelAndView mav = new ModelAndView();

		String jsonResult = "";
		if (grdNo.contains("P")) {
			GroundDTO ground = service.groundDetail(grdNo);
			mav.addObject("ground", ground);
		} else {
			GroundAPIDTO apiG;
			connectToAPI api = new connectToAPI();
			jsonParser jp = new jsonParser();

			jsonResult = api.getJson("", 40);

			ArrayList<GroundAPIDTO> apiArr = jp.parseJson(jsonResult);
			for (int i = 0; i < apiArr.size(); i++) {
				if (grdNo == apiArr.get(i).getGrdNo()) {
					apiG = apiArr.get(i);
					System.out.println("grdNo in apiArr: " + grdNo);
					mav.addObject("apiGround", apiG);
					break;
				}
			}
		}

		int starAvg = service.reviewAvg(grdNo);
		int count = service.countReview(grdNo);

		System.out.println("data loaded****starAvg:" + starAvg + "***count" + count);

		mav.addObject("starAvg", starAvg);
		mav.addObject("count", count);
		mav.addObject("pageNo", pageNo);
		mav.addObject("pageType", "result");
		mav.addObject("base", "map");
		mav.setViewName("mapDetail");
		return mav;
	}
	
	@RequestMapping("/ground/sendName.do")
	public void sendGrdName(String grdName,HttpSession session){
		session.setAttribute("grdName", grdName);
	}
	
	@RequestMapping("/ground/calendar/detail.do")
	public ModelAndView calDetail(String grdNo) {
		ModelAndView mav = new ModelAndView();

		GroundDTO ground = service.groundDetail(grdNo);
		int starAvg = service.reviewAvg(grdNo);
		int count = service.countReview(grdNo);

		mav.addObject("starAvg", starAvg);
		mav.addObject("ground", ground);
		mav.addObject("count", count);

		mav.addObject("pageType", "result");
		mav.addObject("base", "calendar");
		mav.setViewName("calDetail");
		return mav;
	}

	/* add */
	@RequestMapping(value = "/ground/add.do", method = RequestMethod.GET)
	public String addGroundPage() {

		return "addGround";
	}

	@RequestMapping(value = "/ground/add.do", method = RequestMethod.POST)
	public ModelAndView saveGround(GroundDTO ground, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		System.out.println("add ground in controller=>" + ground.toString());
		if (ground.getGrdImg() != null) {
			MultipartFile file = ground.getUpload();
			String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/LPG/img/groundImg");
			String fileName = file.getOriginalFilename();
			if (fileName.length() >= 1) {
				System.out.println("filename!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + fileName);
				service.upload(file, path, fileName);
			} else {
				fileName = "../img/my/noImg.png";
			}
		}
		int result = service.addGround(ground);
		System.out.println("saveGround result=>" + result);
		mav.setViewName("match");
		//return "redirect:/match.do";
		return mav;
	}

	/* review */
	@RequestMapping(value = "/ground/review.do", method = RequestMethod.GET)
	public ModelAndView reviewPage(String mch_no) {
		ModelAndView mav = new ModelAndView();
		GroundDTO ground = service.showReviewPage(mch_no);
		mav.addObject("ground", ground);
		mav.setViewName("reviewGround");
		System.out.println("reviewPage result=>" + ground);
		return mav;
	}

	@RequestMapping(value = "/ground/review.do", method = RequestMethod.POST)
	public String saveReview(GroundReviewDTO review, HttpSession session) {

		// session�� �߰��ɶ� ���� usersportsinfo �̸����� ��ü�Ұ�!!
		UserSportsDTO userSports = (UserSportsDTO) session.getAttribute("userSports");
		review.setSportsNo(userSports.getSportsNo());

		int result = service.insertReview(review);
		System.out.println("saveReview result=>" + result);
		return "reviewGround";
	}

	// ��ġ��Ͻ� ��ġ ��ȣ �޾Ƽ� ���� controller���� insert���־���ϳ�
	/* reserve */
	@RequestMapping(value = "/ground/reserve.do", method = RequestMethod.GET)
	public ModelAndView reservePage(String grdNo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = request.getSession();
		UserDTO user = new UserDTO();
		user.setUserId("abc");
		user.setUserName("박누리");
		session.setAttribute("loginUserInfo", user);
		
		GroundDTO ground = service.groundDetail(grdNo);
		System.out.println("reserve ground controller:"+ground.toString());
		mav.addObject("ground", ground);
		mav.setViewName("reserveGround");
		return mav;
	}

	@RequestMapping(value = "/ground/reserve.do", method = RequestMethod.POST)
		public ModelAndView reserveGround(GroundReserveDTO reserve, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserSportsDTO sportsDto = (UserSportsDTO)session.getAttribute("userSports");
		reserve.setSportsNo(sportsDto.getSportsNo());
/*		System.out.println("Controller"+reserve.toString());
*/		int result = service.insertReserve(reserve);
		System.out.println("reserveGround result=>" + result);
		mav.addObject("grdName",reserve.getGrdName());
		mav.setViewName("redirect:/match/matchResist.do");
		// ������ ��ġ ��� ������ �����ִ� ���·� ���ư�����..? AJAX?
		return mav;
	}

}
