package po;

public class Order {
	public String oid;
	public String name;
	public String price;
	public String num;
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getName() {
		return name;
	}
	public String getNum() {
		return num;
	}
	public String getPrice() {
		return price;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public void setPrice(String price) {
		this.price = price;
	}

}
