package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "bill")
public class Order {
	@Id
	@Column(name = "id")
	private int id;
	@Column(name = "username")
	private String username;
	@Column(name = "date")
	private String date;
	@Column(name = "total_Price")
	private int total_Price;
	@Column(name = "status")
	private String status;
	public Order(int id, String username, String date, int total_Price, String status) {
		super();
		this.id = id;
		this.username = username;
		this.date = date;
		this.total_Price = total_Price;
		this.status = status;
	}
	public Order() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getTotal_Price() {
		return total_Price;
	}
	public void setTotal_Price(int total_Price) {
		this.total_Price = total_Price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}


	

}
