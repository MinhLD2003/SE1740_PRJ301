/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class ShippingAddress {
    private int shipping_addres_id;
    private String fullName;
    private String phone;
    private String email;
    private String address1;
    private String address2;
    private String city;
    private String zip;

    public ShippingAddress() {
    }

    public ShippingAddress(int shipping_addres_id, String fullName, String phone, String email, String address1, String address2, String city, String zip) {
        this.shipping_addres_id = shipping_addres_id;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.address1 = address1;
        this.address2 = address2;
        this.city = city;
        this.zip = zip;
    }

    public ShippingAddress(String fullName, String phone, String email, String address1, String address2, String city, String zip) {
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.address1 = address1;
        this.address2 = address2;
        this.city = city;
        this.zip = zip;
    }
    

    public int getShipping_addres_id() {
        return shipping_addres_id;
    }

    public void setShipping_addres_id(int shipping_addres_id) {
        this.shipping_addres_id = shipping_addres_id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }
    
}
