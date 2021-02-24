package odga.bt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class IndexController {
   
   @RequestMapping("/")
   public String index() {
      return "index";
   }

   @RequestMapping("/index")
   public String index2() {
	  return "index"; 
	}

   @RequestMapping("/support")
   public String support() {
      return "support"; 
   }
//   @RequestMapping("/review")
//   public String review() {
//      return "review"; 
//   }
   
   @RequestMapping("/use")
   public String use() {
      return "use"; 
   }
   @RequestMapping("/contact")
   public String contact() {
      return "contact"; 
   }
   
   @RequestMapping("/elements")
   public String elements() {
      return "elements"; 
   }
   
   @RequestMapping("/listing_details")
   public String listing_details() {
      return "listing_details"; 
   }
   
   @RequestMapping("/listing")
   public String listing() {
      return "listing"; 
   }
   
   @RequestMapping("/main")
   public String main() {
      return "main"; 
   }
   
   @RequestMapping("/login")
   public String login() {
      return "login"; 
   }
   
   @RequestMapping("/test")
   public String test() {
      return "test"; 
   }
   
   
}