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
	
	    @Autowired 
	    private SessionFactory sessionFactory;
	   
	    public Session getSession(){
			
			return sessionFactory.openSession();
					
		}
	    
		public void saveProduct(productmodel prod) {
			
			Session sess = getSession();
			System.out.println(sess);
			if(sess!=null)
			{
			Transaction tx=sess.beginTransaction();
		//	System.out.println("Session Object is : "+sess);
			prod.setPdctID(103);
			prod.setBrand("B");
			prod.setMusicType("guitar");
			prod.setPrice("2000");
			sess.save(prod);
		    System.out.println("Product Object Saved Successfully");
			tx.commit();
			sess.close();
			}
		}
public List<productmodel> getproductlist()
{   
	
	Session sess = getSession();
	Transaction tx = sess.beginTransaction();
	List<productmodel> products= null;	
	Query query=sess.createQuery("from productmodel");
	products=(List<productmodel>)query.list();
	tx.commit();
	sess.close();
	
	return products;	
 }

public void addProduct(productmodel prod)
{
	
	Session sess=sessionFactory.getCurrentSession();
	sess.persist(prod);
	
}


public void updateProduct(productmodel prod) 
{
Session sess=sessionFactory.getCurrentSession();
sess.update(prod);
}

public void removeProduct(int pid)
{
Session sess=sessionFactory.getCurrentSession();
productmodel p=(productmodel) sess.load(productmodel.class,new Integer(pid));
if(sess!=p)
{
	sess.delete(p);
}
}
}
