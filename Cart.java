

package cn.techtutorial.model;

public class Cart extends Product{
	private int quantity;
	private int id;
	public Cart() {}

	public int getQuantity() {
		return quantity;
	}
	public int getId() {
		return id;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setId(int id) {
		this.id = id;
	}

	

}