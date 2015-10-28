package insynctive.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Scope("session")
public class AppController {
	
	@RequestMapping(value = "/" ,method = RequestMethod.GET)
	public ModelAndView root(){
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value = "/openenrollment" ,method = RequestMethod.GET)
	public ModelAndView openEnrollment(){
		ModelAndView model = new ModelAndView();
		model.setViewName("index_oe");
		return model;
	}
	
	@RequestMapping(value = "/onboarding" ,method = RequestMethod.GET)
	public ModelAndView onBoarding(){
		ModelAndView model = new ModelAndView();
		model.setViewName("index_ob");
		return model;
	}
	
	@RequestMapping(value = "/confirmationPage" ,method = RequestMethod.GET)
	public ModelAndView confirmationPage(){
		ModelAndView model = new ModelAndView();
		model.setViewName("confirmationPage");
		return model;
	}
}
