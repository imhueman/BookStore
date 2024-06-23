package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "discount")
public class Discount {
	@Id
	String code;
	@Column(name = "value")
	int value;

	public Discount(String code, int value) {
		super();
		this.code = code;
		this.value = value;
	}

	public Discount() {
	}

	public String getCode() {
		return code;
	}

	public int getValue() {
		return value;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setValue(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "Discount [code=" + code + ", value=" + value + "]";
	}
}
