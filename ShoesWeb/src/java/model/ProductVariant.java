/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductVariant extends Product {

    private String productVariantCode;
    private double productSellingPrice;
    private double productCost;
    private String color;
    private HashMap<String, Integer> sizeQuantityMap;
    private Timestamp createdTime;
    private Timestamp lastUpdate;
    private List<String> imagesUrls;

    public ProductVariant() {
        sizeQuantityMap = new HashMap<>();
        imagesUrls = new ArrayList<>();
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

    public void setSizeQuantityMap(HashMap<String, Integer> sizeQuantityMap) {
        this.sizeQuantityMap = sizeQuantityMap;
    }

    public void updateSizeQuantityMap(String size, int quantity) {
        if (sizeQuantityMap.containsKey(size)) {
            sizeQuantityMap.put(size, sizeQuantityMap.get(size) + quantity);
        } else {
            sizeQuantityMap.put(size, quantity);

        }
    }

    public Timestamp getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Timestamp createdTime) {
        this.createdTime = createdTime;
    }

    public Timestamp getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(Timestamp lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    public List<String> getImagesUrls() {
        return imagesUrls;
    }

    public String getProductVariantCode() {
        return productVariantCode;
    }

    public void setProductVariantCode(String productVariantCode) {
        this.productVariantCode = productVariantCode;
    }

    public void setImagesUrls(List<String> images_urls) {
        this.imagesUrls = images_urls;
    }
}
