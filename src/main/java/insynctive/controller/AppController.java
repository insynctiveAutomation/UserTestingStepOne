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
		model.setViewName("index");
		return model;
	}
}
