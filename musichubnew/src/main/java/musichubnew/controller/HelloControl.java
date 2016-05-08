package musichubnew.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import musichubnew.model.productmodel;

@Controller
public class HelloControl 
{
	@Autowired
	ProductService  pservice;
	@RequestMapping("/product")
	public ModelAndView getpdctcontrol()
	{	
	
	Gson gson=new Gson();
		List<productmodel> list = pservice.getproductlist();
		String json=gson.toJson(list);
	System.out.println(json);
		ModelAndView model=new ModelAndView("product");	
		model.addObject("productlist",json);
		return model;
	}
	@RequestMapping("/welcome")
	public ModelAndView hello()
	{
		ModelAndView model=new ModelAndView("login");	
		return model;
	}

	@RequestMapping("/register")
	public ModelAndView hello2()
	{
		ModelAndView model=new ModelAndView("register");	

		return model;
	}
	@RequestMapping("/display")
	public ModelAndView hello3(@ModelAttribute("p") productmodel product)
	{
		ModelAndView model=new ModelAndView("display");	

		return model;
	}

	@RequestMapping("/savedata")
	public ModelAndView hello4()
	{
		pservice.getProductDao().saveProduct(new productmodel());
		ModelAndView model=new ModelAndView("display");	

		return model;
	}
	
}
