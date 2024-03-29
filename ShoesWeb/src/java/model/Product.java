/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Admin
 */
public class Product extends ModelPage<Product> {

    private String productCode;
    private String name;
    private String brand;
    private List<String> categories;
    private String detail;
    private String description;
    private int stock;
    private double productSellingPrice;
    private double productCost;
    private String color;
    private String gender;

    private HashMap<String, Integer> sizeQuantityMap;
    private Timestamp createdTime;
    private Timestamp lastUpdateTime;
    private List<String> imageUrls;

    public Product() {
        categories = new ArrayList<>();
        sizeQuantityMap = new HashMap<>();
        imageUrls = new ArrayList<>();
    }

    public Product(String productCode, String name, String brand, List<String> categories, String detail, String description,  double productSellingPrice, double productCost, String color, String gender, HashMap<String, Integer> sizeQuantityMap, List<String> imageUrls) {
        this.productCode = productCode;
        this.name = name;
        this.brand = brand;
        this.categories = categories;
        this.detail = detail;
        this.description = description;
        this.productSellingPrice = productSellingPrice;
        this.productCost = productCost;
        this.color = color;
        this.gender = gender;
        this.sizeQuantityMap = sizeQuantityMap;  
        this.imageUrls = imageUrls;
    }
    
    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productVariantCode) {
        this.productCode = productVariantCode;
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

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(List<String> imageUrls) {
        this.imageUrls = imageUrls;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public List<String> getCategories() {
        return categories;
    }

    public void setCategories(List<String> categories) {
        this.categories = categories;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Timestamp createdTime) {
        this.createdTime = createdTime;
    }

    public Timestamp getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Timestamp lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public HashMap<String, Integer> getSizeQuantityMap() {
        return sizeQuantityMap;
    }

    public void addProductCategories(String category) {
        categories.add(category);
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getStock() {
        return stock;
    }

    public void updateStock() {
        int total = 0;
        for (Map.Entry<String, Integer> entry : sizeQuantityMap.entrySet()) {
            int value = entry.getValue();
            total = total + value;
        }
        this.stock = total;
    }

    @Override
    public String toString() {
        return "Product{" + "productCode=" + productCode + ", name=" + name + ", brand=" + brand + ", categories=" + categories + ", detail=" + detail + ", description=" + description + ", productSellingPrice=" + productSellingPrice + ", productCost=" + productCost + ", color=" + color + ", sizeQuantityMap=" + sizeQuantityMap + ", createdTime=" + createdTime + ", lastUpdateTime=" + lastUpdateTime + ", imageUrls=" + imageUrls + '}';
    }

}
