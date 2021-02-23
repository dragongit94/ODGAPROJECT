package odga.bt.controller;

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
import odga.bt.vo.SearchResult;
import odga.bt.vo.Searchcode;
import odga.bt.vo.TotalList;

@RequestMapping("/")
@Controller
@AllArgsConstructor
public class IndexController {
	private PlannerService service;
	
	@RequestMapping("")
	public String index() {
		
		return "index";
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
		//���߿� p_id �޾������
		System.out.println("#"+sp_day);
		List<Touritems> list = service.selectDayById(p_id, sp_day);
		return list;
	}
	//�ٶ�����
	@GetMapping("planner")
	public ModelAndView planner(@RequestParam long m_id) {
		//System.out.println(m_id);
		TotalList lists = service.listS(m_id);
		System.out.println(lists.getThisP_id());
		ModelAndView mv = new ModelAndView("planner", "list", lists);
		return mv;
	}
	
	@GetMapping("search")
	public @ResponseBody SearchResult search(@RequestParam String searchOption, @RequestParam String keyword, @RequestParam String areacode, @RequestParam String sigungucode,
			HttpServletResponse response, HttpSession session) {
		System.out.println("#�ɼ� "+searchOption+"#Ű���� "+keyword+"#�ɼ� "+areacode+"#Ű���� "+sigungucode);
		
	  Searchcode sc = new Searchcode(searchOption, keyword, areacode, sigungucode);
	  SearchResult result = service.searchedList(sc); //int count =
	  

	  //for(Touritems li:list) System.out.println(li.getCat1());
	  
	  return result;
	}
	
	@GetMapping("insert_sp")
	public @ResponseBody List<Touritems> insert_sp(Touritems touritems,long p_id, HttpServletRequest request) {
		String sp_dayStr = request.getParameter("sp_day");
		String contentid = request.getParameter("contentid");
		System.out.println("###P_ID: "+p_id);
		System.out.println("sp_day "+sp_dayStr);
		long sp_day = -1;
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
		s_planer.setP_id(p_id);
		service.insert_sp(s_planer);
		
		long thisP_id = p_id; // �÷��� ���̵� ���߿� �޾������
		List<Touritems> list = service.selectDayById(thisP_id, sp_day);
		System.out.println("정상실행??");
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
		
		int p_id = 5; // �÷��� ���̵� ���߿� �޾������
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
	@GetMapping("leave")
	public String leave(long p_id) {
		System.out.println("#######"+p_id);
		service.delPlan(p_id);
		
		return "index";
	}
}
