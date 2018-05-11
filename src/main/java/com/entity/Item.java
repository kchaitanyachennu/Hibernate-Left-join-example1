package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="item")
public class Item {
	 @Id
	    @Column(name="iid")
	    private int itemId;
	    @Column(name="iname")
	    private String itemName;
	    @Column(name="price")
	    private int price;
	    /*@Column(name = "customer_id")
	    private int cid;
	    
	    
		public int getCid() {
			return cid;
		}


		public void setCid(int cid) {
			this.cid = cid;
		}*/


		public int getItemId() {
			return itemId;
		}
		
		
		public void setItemId(int itemId) {
			this.itemId = itemId;
		}
		public String getItemName() {
			return itemName;
		}
		public void setItemName(String itemName) {
			this.itemName = itemName;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
	    
	    
	    
}
