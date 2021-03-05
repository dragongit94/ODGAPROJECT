package odga.bt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import odga.bt.domain.Touritems;
import odga.bt.domain.ListResult;
import odga.bt.domain.Planer;
import odga.bt.domain.S_Planer;
import odga.bt.vo.DetailVo;
import odga.bt.vo.ListVo;
import odga.bt.vo.MyPlan;
import odga.bt.service.MemberService;
import odga.bt.service.PlannerService;
import odga.bt.service.TouritemsService;

@RequestMapping("/")
@Controller
public class IndexController {
   
   @Resource
   private TouritemsService service;
   
   @Resource
   private MemberService serviceM;
   
   @Resource
   private PlannerService serviceP;
	
   @RequestMapping("")
   public String index() {
      return "index"; 
   }
   @RequestMapping("/index.do")
   public String index2() {
	  return "index"; 
	}
   @RequestMapping("/review")
   public String review() {
      return "review"; 
   }
   @RequestMapping("/review_details")
   public String review_details() {
      return "review_details"; 
   }
   @RequestMapping("/use")
   public String use() {
      return "use"; 
   }
   @RequestMapping("/member.do")
   public String member() {
	   
      return "member"; 
   }
   @RequestMapping("/leaveM")
   public String leave() {
      return "leave"; 
   }
   @RequestMapping("/user")
   public String userUpdate() {
	   
      return "user"; 
   }
   @RequestMapping("/member_edit.do")
   public String member_edit() {
      return "member_edit"; 
   }
   //나의 일정
   @RequestMapping("/member_plan.do")
   public ModelAndView member_plan(long m_id) {
	   //List<String> li = new ArrayList<String>();
	   System.out.println("###"+m_id);
	   List<Planer> myPlans = serviceM.myPlanS(m_id);

	   int min=1, max=15;
	   for(Planer plan : myPlans) {		   
		   int ranNum =(int)(Math.random() * (max - min + 1) + min);
		   //System.out.println(ranNum);
		   String li = ranNum+".jpg";
		   plan.setRandomImg(li);
		   //System.out.println(plan+"        "+ranNum);
	   }
	   //for(String l:li) System.out.println(l);
	   //MyPlan myPlan = new MyPlan(myPlans, li);	 
	   
	   //System.out.println(myPlan);
	   if(myPlans!=null) return new ModelAndView("myPlan", "myPlans", myPlans);
	   else {
		   System.out.println("myPlans이 들어있나?");
		   return new ModelAndView("myPlan"); 
	   }
   }
   //일정 디테일
   @RequestMapping("/plan_detail.do")
   public ModelAndView plan_detail(long m_id, long p_id) {
	   System.out.println(p_id);	   
	   DetailVo planDetail = serviceM.planDetails(m_id, p_id);
	   //System.out.println(myPlans);
	   if(planDetail!=null) {
		   System.out.println(1);
		   return new ModelAndView("plan_detail", "planDetail", planDetail);
	   }else{
		   System.out.println(2);
		   return new ModelAndView("plan_detail"); 
	   }
       
   }
   //마이페이지 일정 삭제
   @RequestMapping("delPlan")
   public String delPlan(long p_id, long m_id) {
	   //System.out.println("pid : "+p_id+" m_id : "+m_id);
	   serviceP.delPlan(p_id);
	   
	   String view = "forward:/member_plan.do";
	   return view;
   }
   @RequestMapping("/member_review.do")
   public String member_review() {
      return "member_review"; 
   }
   @RequestMapping("/listing")
   public ModelAndView listing(HttpServletRequest request) {
	    HttpSession session = request.getSession();
		String keyword = request.getParameter("keyword");
		String catgo = request.getParameter("catgo");
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		
		session.setAttribute("keyword", keyword);
		session.setAttribute("catgo", catgo);
		
		//(1) cp 
		int cp = 1;
		if(cpStr == null) {
			Object cpObj = session.getAttribute("cp");
			if(cpObj != null) {
				cp = (Integer)cpObj;
			}
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
		session.setAttribute("cp", cp);
		
		//(2) ps 
		int ps = 10;
		if(psStr == null) {
			Object psObj = session.getAttribute("ps");
			if(psObj != null) {
				ps = (Integer)psObj;
			}
		}else {
			psStr = psStr.trim();
			int psParam = Integer.parseInt(psStr);
			
			Object psObj = session.getAttribute("ps");
			if(psObj != null) {
				int psSession = (Integer)psObj;
				if(psSession != psParam) {
					cp = 1;
					session.setAttribute("cp", cp);
				}
			}else {
				if(ps != psParam) {
					cp = 1;
					session.setAttribute("cp", cp);
				}
			}
			
			ps = psParam;
		}
		session.setAttribute("ps", ps);
		
		//(3) ModelAndView 
		
		ListResult listResult = null;
		ModelAndView mv = null;
		
		if(catgo != null && keyword != null) {
			int rangeSize = 5;
			listResult = service.getTouritemsListResult(catgo, keyword, cp, ps, rangeSize);
			mv = new ModelAndView("listing", "listResult", listResult);
			if(listResult.getList().size() == 0) {
				if(cp>1)
					return new ModelAndView("redirect:listing.do?cp="+(cp-1));
				else
					return new ModelAndView("listing", "listResult", null);
			}
				return mv;
		}else {
			int rangeSize = 5;
			listResult = service.getTouritemsListResult(cp, ps, rangeSize);
			mv = new ModelAndView("listing", "listResult", listResult);
			if(listResult.getList().size() == 0) {
				if(cp>1)
					return new ModelAndView("redirect:listing.do?cp="+(cp-1));
				else
					return new ModelAndView("listing", "listResult", null);
			}
		}
		return mv;
	}
   @RequestMapping("/listing_details")
   public ModelAndView listing_details(HttpServletRequest request) {
	    HttpSession session = request.getSession();
		String title = request.getParameter("title");
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		//(1) cp 
				int cp = 1;
				if(cpStr == null) {
					Object cpObj = session.getAttribute("cp");
					if(cpObj != null) {
						cp = (Integer)cpObj;
					}
				}else {
					cpStr = cpStr.trim();
					cp = Integer.parseInt(cpStr);
				}
				session.setAttribute("cp", cp);
				
				//(2) ps 
				int ps = 10;
				if(psStr == null) {
					Object psObj = session.getAttribute("ps");
					if(psObj != null) {
						ps = (Integer)psObj;
					}
				}else {
					psStr = psStr.trim();
					int psParam = Integer.parseInt(psStr);
					
					Object psObj = session.getAttribute("ps");
					if(psObj != null) {
						int psSession = (Integer)psObj;
						if(psSession != psParam) {
							cp = 1;
							session.setAttribute("cp", cp);
						}
					}else {
						if(ps != psParam) {
							cp = 1;
							session.setAttribute("cp", cp);
						}
					}
					
					ps = psParam;
				}
				session.setAttribute("ps", ps);
				
			int rangeSize = 10;
				
			Touritems touritems = service.selectByTitleS(title);
			ListResult listResult = service.getTouritemsListResult(cp, ps, rangeSize);
			
			ListVo vo = new ListVo();
			vo.setTouritems(touritems);
			vo.setListResult(listResult);
			ModelAndView mv = new ModelAndView("listing_details", "ListVo", vo);
			return mv;
  } 
   @RequestMapping("/main")
   public String main() {
      return "main"; 
   }
   
	/*
	 * @RequestMapping("/login.do") public String login() { return "login"; }
	 */
}