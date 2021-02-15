package test.md.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import test.md.domain.Area_T;
import test.md.service.Area_T_Service;
import test.md.vo.TotalList;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class HomeController {
	@Autowired
	private Area_T_Service service;
	
	@GetMapping("/")
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	@GetMapping("testapi2")
	public String testapi2(Locale locale, Model model) {
		
		return "testapi2";
	}
	@GetMapping("testhtml")
	public String testhtml() {
		
		return "test";
	}
	@GetMapping("testGet")
	public String testGet(@RequestParam String contentid) {
		log.info(contentid);
		
		return "testapi2";
	}
	@GetMapping("planner")
	public ModelAndView planner() {		
		TotalList lists = service.listS();
		ModelAndView mv = new ModelAndView("planner", "list", lists);
		return mv;
	}
	@GetMapping("combo")
	public String combo() {
		
		return "combotest";
	}
}
