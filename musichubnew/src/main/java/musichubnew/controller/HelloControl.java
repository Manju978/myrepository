package musichubnew.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloControl 
{
@RequestMapping("/welcome")
public ModelAndView hello()
{
ModelAndView model=new ModelAndView("login");	
return model;
}

@RequestMapping("/")
public ModelAndView hello1()
{
ModelAndView model=new ModelAndView("index");	

return model;
}

@RequestMapping("/register")
public ModelAndView hello2()
{
ModelAndView model=new ModelAndView("register");	

return model;
}
@RequestMapping("/product")
public ModelAndView hello3()
{
ModelAndView model=new ModelAndView("product");	

return model;
}
}
