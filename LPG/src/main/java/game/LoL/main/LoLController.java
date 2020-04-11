package game.LoL.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoLController {
	@RequestMapping("/LoLMain.do")
	public String LoLMain() {
		return "LoLMain";
	}
	@RequestMapping("/LoL/MchList.do")
	public String LoLMchList() {
		return "LoLMchList";
	}
	@RequestMapping("/LoL/MchResit.do")
	public String LoLMchResit() {
		return "LoLMchResit";
	}

}
