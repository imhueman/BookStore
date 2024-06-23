package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.Table;

@Entity
@Table(name = "cart")

public class Cart {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idCart;
    @Column
    private String username;
    @Column
    private int productID;
    @Column
    private String productName;
    @Column
    private int amount;
    @Column
    private double price;
    @Column
    private String imgPath;

    public Cart(String username, int productID, String productName, int amount, double price, String imgPath) {
        super();
        this.username = username;
        this.productID = productID;
        this.productName = productName;
        this.amount = amount;
        this.price = price;
        this.imgPath = imgPath;
    }



    public Cart() {
        super();
    }



    public String getUsername() {
        return username;
    }

    public int getProductID() {
        return productID;
    }

    public String getProductName() {
        return productName;
    }

    public int getAmount() {
        return amount;
    }

    public double getPrice() {
        return price;
    }

    public String getImgPath() {
        return imgPath;
    }

    @Override
    public String toString() {
        return "Cart [username=" + username + ", productID=" + productID + ", productName=" + productName + ", amount="
                + amount + ", price=" + price + ", imgPath=" + imgPath + "]";
    }
}
