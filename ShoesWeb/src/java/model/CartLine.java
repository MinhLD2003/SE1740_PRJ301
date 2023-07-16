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
    private String size;
    private int quantity;
    private double subtotal;

    public CartLine() {
    }

    public CartLine(Product product, String size) {
        this.product = product;
        this.quantity = 1;
        this.size = size;
        this.subtotal = product.getProductSellingPrice();
    }

    public Product getProduct() {
        return this.product;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
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
        setSubtotal(quantity * this.product.getProductSellingPrice());    
    }
    public int getSizeStock() {
        return product.getSizeQuantityMap().get(size);
    }
    @Override
    public String toString() {
        return "CartLine{" + "product=" + product + ", size=" + size + ", quantity=" + quantity + ", subtotal=" + subtotal + '}';
    }

}
