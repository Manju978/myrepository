package musichubnew.controller;

import musichubnew.dao.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class productcontroller
{
	@RequestMapping("/guitar")
public ModelAndView getpdctcontrol()
{
productdao dao=new productdao();		
ModelAndView model=new ModelAndView("modellist");	
model.addObject("modellist",dao.getproductlist());
return model;
}
}
