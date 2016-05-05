package musichubnew.controller;
import musichubnew.dao.*;
import musichubnew.model.*;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("pservice")
public class ProductService
{
@Autowired
productdao productDao;
public List<productmodel> getproductlist()
{
	return productDao.getproductlist();	
}
}
