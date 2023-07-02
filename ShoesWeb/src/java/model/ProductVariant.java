/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductVariant extends Product {

    private int id;
    private String productVariantCode;
    private double productSellingPrice;
    private double productCost;
    private String color;
    private HashMap<String, Integer> sizeQuantityMap = new HashMap<>();
    private Timestamp lastUpdate;
    private List<String> images_urls;

    public ProductVariant() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getProductSellingPrice() {
        return productSellingPrice;
    }

    public void setProductSellingPrice(double productSellingPrice) {
        this.productSellingPrice = productSellingPrice;
    }

    public double getProductCost() {
        return productCost;
    }

    public void setProductCost(double productCost) {
        this.productCost = productCost;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public HashMap<String, Integer> getSizeQuantityMap() {
        return sizeQuantityMap;
    }

    public Timestamp getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(Timestamp lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    public List<String> getImages_urls() {
        return images_urls;
    }

    public String getProductVariantCode() {
        return productVariantCode;
    }

    public void setProductVariantCode(String productVariantCode) {
        this.productVariantCode = productVariantCode;
    }

    public void setImages_urls(List<String> images_urls) {
        this.images_urls = images_urls;
    }
}
