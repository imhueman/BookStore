package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name = "reviews")
public class Reviews {
	@Column
	private int productID;
	@Id
	private String username;
	@Column
	private String comment;
	@Column
	private int sosao;
	@Column
	private String timeReviews;

	public Reviews(int productID, String username, String comment, int sosao, String timeReviews) {
		super();
		this.productID = productID;
		this.username = username;
		this.comment = comment;
		this.sosao = sosao;
		this.timeReviews = timeReviews;
	}

	public int getProductID() {
		return productID;
	}

	public String getUsername() {
		return username;
	}

	public String getComment() {
		return comment;
	}

	public String getTimeReviews() {
		return timeReviews;
	}

	public int getSosao() {
		return sosao;
	}

	@Override
	public String toString() {
		return "Reviews [ productID=" + productID + ", username=" + username + ", comment=" + comment + ", timeReviews="
				+ timeReviews + "]";
	}

	public static void main(String[] args) {
//		System.out.println(new Date().getMinutes());
//		String s = new Date().getMinutes();
//		System.out.println(s);
//		SimpleDateFormat date = new SimpleDateFormat("hh:mm");
//		String d = date.format(new Date().getTime());
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("hh:mm:ss   dd-MM-yyyy");

		String strDate = formatter.format(date);
		System.out.println("Date Format with dd-M-yyyy hh:mm:ss: " + strDate);

	}
}
