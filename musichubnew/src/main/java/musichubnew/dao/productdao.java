package musichubnew.dao;
import musichubnew.model.*;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


@Repository("productDao")
public class productdao implements productdaointerface
{
public List<productmodel> getproductlist()
{
	List<productmodel> modellist=new ArrayList<productmodel>();
	productmodel model1=new productmodel("1102", "violin", "A", "100");
	productmodel model2=new productmodel("1102", "violin", "A", "100");
	modellist.add(model1);
	modellist.add(model2);
	return modellist;	
}
}
