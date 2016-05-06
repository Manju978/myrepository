package musichubnew.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

@Entity
@Table(name = "product")
public class productmodel implements Serializable
{
	@Id
	@GeneratedValue
	private int PdctID;
	private String MusicType;
	private String Brand;
	private String Price;
	public productmodel(){}
	public productmodel(int PdctID,String MusicType,String Brand,String Price)
	{
		this.Brand=Brand;
		this.MusicType=MusicType;
		this.PdctID=PdctID;
		this.Price=Price;
	}
	
	public void setPdctID(int pdctID) {
		PdctID = pdctID;
	}
	
	public int getPdctID() {
		return PdctID;
	}

	public String getMusicType() 
	{
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

