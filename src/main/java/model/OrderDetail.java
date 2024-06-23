package model;

public class OrderDetail {
	private int orderDetailID;
	private int orderID;
	private int productID;
	private int quantity;
	private double giaGoc;

	public OrderDetail(int orderDetailID, int orderID, int productID, int quantity, double giaGoc) {
		super();
		this.orderDetailID = orderDetailID;
		this.orderID = orderID;
		this.productID = productID;
		this.quantity = quantity;
		this.giaGoc = giaGoc;
	}

	public int getOrderDetailID() {
		return orderDetailID;
	}

	public int getOrderID() {
		return orderID;
	}

	public int getProductID() {
		return productID;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getGiaGoc() {
		return giaGoc;
	}

	@Override
	public String toString() {
		return "OrderDetail [orderDetailID=" + orderDetailID + ", orderID=" + orderID + ", productID=" + productID
				+ ", quantity=" + quantity + ", giaGoc=" + giaGoc + "]";
	}

}
