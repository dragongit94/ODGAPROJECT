package odga.bt.controller;

<<<<<<< HEAD
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
=======
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import odga.bt.domain.S_Planer;
import odga.bt.domain.Touritems;
import odga.bt.service.PlannerService;
<<<<<<< HEAD
=======
import odga.bt.vo.SearchResult;
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
import odga.bt.vo.Searchcode;
import odga.bt.vo.TotalList;

@RequestMapping("/")
@Controller
@Log4j
@AllArgsConstructor
public class IndexController {
	private PlannerService service;
	
	@RequestMapping("")
	public String index() {
		
		return "index";
<<<<<<< HEAD
	}
	@RequestMapping("api.do")
	public String api() {
		
		return "api";
	}
	
	  @RequestMapping("/planner1") 
	  public String planner1() {
	  
	  return "planner"; 
	  }

	@GetMapping("dayselect")
	public @ResponseBody List<Touritems> day(@RequestParam long p_id, @RequestParam long sp_day) {
		//³ªÁß¿¡ p_id ¹Þ¾ÆÁà¾ßÇÔ
		System.out.println("#"+sp_day);
		List<Touritems> list = service.selectDayById(p_id, sp_day);
		return list;
	}
	//¹Ù¶§¸®²¨
	@GetMapping("planner")
	public ModelAndView planner() {		
		TotalList lists = service.listS();
		ModelAndView mv = new ModelAndView("planner", "list", lists);
		return mv;
	}
	
	@GetMapping("search")
	public @ResponseBody List<Touritems> search(@RequestParam String searchOption, @RequestParam String keyword, HttpServletResponse response, HttpSession session) {
		List<Touritems> list = service.searchedList(searchOption, keyword);
		//int count = service.countContent(searchOption,keyword);
		//System.out.println("#¿É¼Ç "+searchOption+"#Å°¿öµå "+keyword);
		//System.out.println("#¸®½ºÆ® "+list);
		return list;
=======
	}
	@RequestMapping("api.do")
	public String api() {
		
		return "api";
	}
	
	  @RequestMapping("/planner1") 
	  public String planner1() {
	  
	  return "planner"; 
	  }

	@GetMapping("dayselect")
	public @ResponseBody List<Touritems> day(@RequestParam long p_id, @RequestParam long sp_day) {
		//ï¿½ï¿½ï¿½ß¿ï¿½ p_id ï¿½Þ¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
		System.out.println("#"+sp_day);
		List<Touritems> list = service.selectDayById(p_id, sp_day);
		return list;
	}
	//ï¿½Ù¶ï¿½ï¿½ï¿½ï¿½ï¿½
	@GetMapping("planner")
	public ModelAndView planner(@RequestParam long m_id) {
		//System.out.println(m_id);
		TotalList lists = service.listS(m_id);
		ModelAndView mv = new ModelAndView("planner", "list", lists);
		return mv;
	}
	
	@GetMapping("search")
	public @ResponseBody SearchResult search(@RequestParam String searchOption, @RequestParam String keyword, @RequestParam String areacode, @RequestParam String sigungucode,
			HttpServletResponse response, HttpSession session) {
		System.out.println("#ï¿½É¼ï¿½ "+searchOption+"#Å°ï¿½ï¿½ï¿½ï¿½ "+keyword+"#ï¿½É¼ï¿½ "+areacode+"#Å°ï¿½ï¿½ï¿½ï¿½ "+sigungucode);
		
	  Searchcode sc = new Searchcode(searchOption, keyword, areacode, sigungucode);
	  SearchResult result = service.searchedList(sc); //int count =
	  

	  //for(Touritems li:list) System.out.println(li.getCat1());
	  
	  return result;
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
	}
	
	@GetMapping("insert_sp")
	public @ResponseBody List<Touritems> insert_sp(Touritems touritems, HttpServletRequest request) {
		String sp_dayStr = request.getParameter("sp_day");
<<<<<<< HEAD
		String sp_sday = request.getParameter("sp_sday");
		String sp_eday = request.getParameter("sp_eday");
		String contentid = request.getParameter("contentid");		
		long sp_day = -1;
		//System.out.println("# "+sp_sday+"# "+sp_eday);
=======
		String contentid = request.getParameter("contentid");
		System.out.println("sp_day "+sp_dayStr);
		long sp_day = -1;
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
		if(sp_dayStr != null) {
			sp_dayStr = sp_dayStr.trim();
			try {
				sp_day = Long.parseLong(sp_dayStr);
			}catch(NumberFormatException ne) {
				ne.printStackTrace();
				return null;
			}
		}		
		S_Planer s_planer  = new S_Planer();
		s_planer.setSp_day(sp_day);
		s_planer.setContentid(contentid);
<<<<<<< HEAD
		s_planer.setSp_sday(sp_sday);
		s_planer.setSp_eday(sp_eday);
		service.insert_sp(s_planer);
		
		int p_id = 5; // ÇÃ·¡³Ê ¾ÆÀÌµð ³ªÁß¿¡ ¹Þ¾ÆÁà¾ßÇÔ
=======
		service.insert_sp(s_planer);
		
		int p_id = 5; // ï¿½Ã·ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ìµï¿½ ï¿½ï¿½ï¿½ß¿ï¿½ ï¿½Þ¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
		List<Touritems> list = service.selectDayById(p_id, sp_day);
		return list;
	}
	
	@GetMapping("delete_sp")
	public @ResponseBody List<Touritems> delete_sp(Touritems touritems, HttpServletRequest request) {
		String sp_idStr = request.getParameter("sp_id");
		String sp_dayStr = request.getParameter("sp_day");
		System.out.println("sp_id: "+sp_idStr);
		System.out.println("sp_day: "+sp_dayStr);
		long sp_id = -1;
		long sp_day = -1;
		if((sp_idStr != null) && (sp_dayStr != null)) {
			sp_idStr = sp_idStr.trim();
			sp_dayStr = sp_dayStr.trim();
			try {
				sp_id = Long.parseLong(sp_idStr);
				sp_day = Long.parseLong(sp_dayStr);
			}catch(NumberFormatException ne) {
				ne.printStackTrace();
				return null;
			}
		}		
		service.delete_sp(sp_id);
		
<<<<<<< HEAD
		int p_id = 5; // ÇÃ·¡³Ê ¾ÆÀÌµð ³ªÁß¿¡ ¹Þ¾ÆÁà¾ßÇÔ
=======
		int p_id = 5; // ï¿½Ã·ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ìµï¿½ ï¿½ï¿½ï¿½ß¿ï¿½ ï¿½Þ¾ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
>>>>>>> e0575f89807002bde1fe6699ad7a8aaeaac686ae
		List<Touritems> list = service.selectDayById(p_id, sp_day);
		return list;
	}
	
	@PostMapping("select")
	public @ResponseBody List<Touritems> select(String name, String areacode, String sigungucode, String contenttypeid, HttpServletResponse response) {
		//System.out.println("### name: "+name+" #areacode : "+areacode+" #sigungucode : "+sigungucode+" #contenttypeid : "+contenttypeid);
		System.out.println(areacode.length());
		Searchcode sc = new Searchcode(name, areacode, sigungucode, contenttypeid);
		List<Touritems> list = service.selectResultS(sc); 
		for(Touritems t:list)
		System.out.println(t.getAddr1()+"####"+ t.getTitle());	
		return list;
	}
}
