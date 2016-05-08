package musichubnew.controller;
import musichubnew.dao.*;
import musichubnew.model.*;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("pservice")
@Transactional
public class ProductService
{
@Autowired
productdao productDao;

public productdao getProductDao() 
{

	return productDao;
	
}

public List<productmodel> getproductlist()
{
	return productDao.getproductlist();	
}
public void addProduct(productmodel p)
{
	this.productDao.addProduct(p);
}
public void removeProduct(int id)
{
	this.productDao.removeProduct(id);
}
public void updateProduct(productmodel p)
{
	this.productDao.updateProduct(p);
}
}
