package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "product")
@Getter
@Setter
public class Product {
	@Id
	@Column(name = "ProductID")
	int productID;
	@Column(name = "productName")
	String productName;
	@Column(name = "categoryid")
	int categoryID;
	@Column(name = "Description")
	String description;
	@Column(name = "price")
	int price;
	@Column(name = "stockQuantity")
	int stockQuantity;
	@Column(name = "unit_price")
	String unit_price;
	@Column(name = "imgpath")
	String imgPath;
	@Column(name = "color")
	String color;





	@Override
	public String toString() {
		return "Product [productID=" + productID + ", productName=" + productName + ", categoryID=" + categoryID
				+ ", description=" + description + ", price=" + price + ", stockQuantity=" + stockQuantity
				+ ", unit_price=" + unit_price + ", imgPath=" + imgPath + "]";
	}

}