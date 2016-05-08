package musichubnew.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import musichubnew.model.productmodel;

@Controller
public class admincontroller 
{
@Autowired
private	ProductService psService;

public void setproductservice(ProductService ps)
{
this.psService=ps;
}

@RequestMapping(value="/admin" ,method=RequestMethod.GET)
public String hello(Model model)
{

	Gson gson=new Gson();
	List<productmodel> list = psService.getproductlist();
	String json=gson.toJson(list);
	System.out.println("Hamara JSON"+json);
	model.addAttribute("product", new productmodel());
    model.addAttribute("listPersons", json.toString());
	return "admin";
    
}
//For add and update product both
@RequestMapping(value= "/product/add", method = RequestMethod.POST)
public String addProduct(@ModelAttribute("product") productmodel p){
     
    if(p.getPdctID() == 0){
        //new person, add it
        this.psService.addProduct(p);;
    }else{
        //existing person, call update
        this.psService.updateProduct(p);
    }
     
    return "redirect:/admin";
     
  }
}
