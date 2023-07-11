/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class CartLine {

    private Product product;
    private int quantity;
    private double subtotal;

    public CartLine() {
    }
    public CartLine(Product product) {
        this.product = product;
        this.quantity = 1;
        this.subtotal = product.getProductSellingPrice();
    }
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public void updateSubtotal(int quantity) {
        setQuantity(quantity);
        this.subtotal = quantity * product.getProductSellingPrice();
    }
}
