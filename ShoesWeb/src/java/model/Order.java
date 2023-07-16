/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Order {

    private int orderId;
    private double amount;
    private String orderNote;
    private String status;
    private Timestamp createdTime;
    private ShippingAddress address;
    private List<CartLine> orderLines;

    public Order() {
        
        orderLines = new ArrayList<>();
    }

    public Order(int orderId, double amount, String orderNote, Timestamp createdTime, ShippingAddress address, List<CartLine> orderLines) {
        this.orderId = orderId;
        this.amount = amount;
        this.orderNote = orderNote;

        this.createdTime = createdTime;
        this.address = address;
        this.orderLines = orderLines;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getOrderNote() {
        return orderNote;
    }

    public void setOrderNote(String orderNote) {
        this.orderNote = orderNote;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Timestamp createdTime) {
        this.createdTime = createdTime;
    }

    public ShippingAddress getAddress() {
        return address;
    }

    public void setAddress(ShippingAddress address) {
        this.address = address;
    }

    public List<CartLine> getOrderLines() {
        return orderLines;
    }

    public void setOrderLines(List<CartLine> orderLines) {
        this.orderLines = orderLines;
    }

}
