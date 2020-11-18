package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	// 시작 첫 화면 Page , 로그인 없이 관련 페이지 접근시 이 페이지로 전송
	@RequestMapping(value="startpage")
	public String StartPage() {
		log.info(this.getClass());
		
		return "/startpage";
	}
	
	// 로그인 Page , 로그인 완료시 ChoicePage로 이동
	@RequestMapping(value="index")
	public String LoginPage() {
		log.info(this.getClass());
		
		return "/index";
	}
	
	// 등록 / 문제풀이 페이지 중 선택할 수 있게하는 페이지, 완료시 Subject1Page로 이동     ( 상단 바에 홈 버튼을 만들어서 여기로 와지게 끔 할 것임 )
	@RequestMapping(value="index")
	public String ChoicePage() {
		log.info(this.getClass());
		
		return "/index";
	}
	
	// 문제 등록 시 과목 선택 페이지, 완료시 Select1Page로 이동
	@RequestMapping(value="index")
	public String Subject1Page() {
		log.info(this.getClass());
		
		return "/index";
	}
	
	// 과목 안에서 원하는 문제 선택, 완료시 MakingPage로 이동
	@RequestMapping(value="index")
	public String Select1Page() {
		log.info(this.getClass());
		
		return "/index";
	}
	
	// 문제를 직접 만드는 페이지, 완료시 Subject1Page로 이동
	@RequestMapping(value="index")
	public String MakingPage() {
		log.info(this.getClass());
		
		return "/index";
	}
	
	// 문제 풀이 시 과목 선택 페이지, 완료시 Select2Page로 이동
	@RequestMapping(value="index")
	public String Subject2Page() {
		log.info(this.getClass());
			
		return "/index";
	}

	// 과목 선택 시 내가만든 문제 선택 페이지, 완료시 SolutionPage로 이동
	@RequestMapping(value="index")
	public String Select2Page() {
		log.info(this.getClass());
			
		return "/index";
	}		
	// 내가 만든 문제 풀이 페이지, 완료시 Subject2Page로 이동
	@RequestMapping(value="index")
	public String SolutionPage() {
		log.info(this.getClass());
			
		return "/index";
	}
		
}
