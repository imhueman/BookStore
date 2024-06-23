package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "category")
public class Category {
	@Id
	@Column(name = "CategoryID")
	int idCategory;
	@Column(name = "category")
	String nameCategory;

	public Category(int idCategory, String nameCategory) {
		super();
		this.idCategory = idCategory;
		this.nameCategory = nameCategory;
	}

	public Category() {

	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	public String getNameCategory() {
		return nameCategory;
	}

	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}

	@Override
	public String toString() {
		return "Category [idCategory=" + idCategory + ", nameCategory=" + nameCategory + "]";
	}
}
