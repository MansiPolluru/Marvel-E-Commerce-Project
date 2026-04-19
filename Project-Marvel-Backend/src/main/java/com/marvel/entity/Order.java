package com.marvel.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;

@Entity
@Table(name = "orders")
@Data
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;
    private String itemName;
    private String itemCategory;
    private String size;
    private int quantity;
    private double totalPrice;
    private LocalDate dateOfOrder;
    private String deliveryStatus; // PENDING, DELIVERED, CANCELLED
    
    private String address;
    
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(Long id, String username, String itemName, String itemCategory, String size, int quantity,
			double totalPrice, LocalDate dateOfOrder, String deliveryStatus, String address) {
		super();
		this.id = id;
		this.username = username;
		this.itemName = itemName;
		this.itemCategory = itemCategory;
		this.size = size;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.dateOfOrder = dateOfOrder;
		this.deliveryStatus = deliveryStatus;
		this.address = address;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemCategory() {
		return itemCategory;
	}
	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public LocalDate getDateOfOrder() {
		return dateOfOrder;
	}
	public void setDateOfOrder(LocalDate dateOfOrder) {
		this.dateOfOrder = dateOfOrder;
	}
	public String getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", username=" + username + ", itemName=" + itemName + ", itemCategory="
				+ itemCategory + ", size=" + size + ", quantity=" + quantity + ", totalPrice=" + totalPrice
				+ ", dateOfOrder=" + dateOfOrder + ", deliveryStatus=" + deliveryStatus + "Address:" + address + "]";
	}
    
}