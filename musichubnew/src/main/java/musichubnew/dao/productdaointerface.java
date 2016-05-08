package musichubnew.dao;
import musichubnew.model.*;
import java.util.List;


public interface productdaointerface 
{
	public List<productmodel> getproductlist();
	public void saveProduct(productmodel prod);
	public void addProduct(productmodel p);
    public void updateProduct(productmodel p);
    
    public void removeProduct(int id);
}
