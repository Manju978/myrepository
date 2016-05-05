package musichubnew.model;

import org.springframework.stereotype.Repository;


public class productmodel 
{
	private String PdctID;
	private String MusicType;
	private String Brand;
	private String Price;
	
	public productmodel(String PdctID,String MusicType,String Brand,String Price)
	{
		this.Brand=Brand;
		this.MusicType=MusicType;
		this.PdctID=PdctID;
		this.Price=Price;
	}
	
	public String getPdctID() {
		return PdctID;
	}
	public void setPdctID(String pdctID) {
		PdctID = pdctID;
	}
	public String getMusicType() {
		return MusicType;
	}
	public void setMusicType(String musicType) {
		MusicType = musicType;
	}
	public String getBrand() {
		return Brand;
	}
	public void setBrand(String brand) {
		Brand = brand;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}

		
	}

