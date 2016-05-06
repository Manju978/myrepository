package musichubnew.dao;


import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import musichubnew.model.productmodel;


@Repository("productDao")
public class productdao implements productdaointerface
{
	Session sess;
	 productmodel product;
	    @Autowired 
	    private SessionFactory sessionFactory;
	   
	    public Session getSession(){
			
			return sessionFactory.openSession();
					
		}

		public void saveProduct(productmodel prod) {
			
			Session sess = getSession();
			System.out.println(sess);
			if(sess!=null){
			Transaction tx=sess.getTransaction();
			System.out.println("Session Object is : "+sess);
			sess.save(prod);
		    System.out.println("Product Object Saved Successfully");
			tx.commit();
			sess.close();
			}
		}
public List<productmodel> getproductlist()
{   
	
	List<productmodel> modellist=new ArrayList<productmodel>();
	
	//Query query=sess.createQuery("select PdctID from productmodel");
	//List list=query.list();  
	return modellist;	
}
}
