/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {

    private double tax;
    private double shippingFee;
    private double discount;
    private List<CartLine> cartLine;

    public Cart() {
        cartLine = new ArrayList<>();
        discount = 0;
        tax = 0;
        shippingFee = 0;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }

    public double getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(double shippingFee) {
        this.shippingFee = shippingFee;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public List<CartLine> getCartLine() {
        return cartLine;
    }

    public void setCartLine(List<CartLine> cartLine) {
        this.cartLine = cartLine;
    }

    public void addCartLine(CartLine cart) {
        this.cartLine.add(cart);
    }

    public void removeCartLine(Product product) {
        for (CartLine c : cartLine) {
            if (c.getProduct().getProductCode().equals(product.getProductCode())) {
                cartLine.remove(c);
                return;
            }
        }
    }

    public void updateCartLine(Product product , int quantity) {
        for (CartLine c : cartLine) {
            if (c.getProduct().getProductCode().equals(product.getProductCode())) {
                c.updateSubtotal(quantity);
            }
        }
    }

}
