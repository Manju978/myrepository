package musichubnew.controller;
import musichubnew.model.*;
import java.util.ArrayList;
import java.util.List;



public interface productserviceinterface 
{
	public List<productmodel> getproductlist();
	public void saveProduct(productmodel prod);
	public void addProduct(productmodel p);
    public void updateProduct(productmodel p);
}
