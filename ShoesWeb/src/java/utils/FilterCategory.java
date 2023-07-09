/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Admin
 */
public class FilterCategory {

    public static HashMap<String, List<String>> filterMap = new HashMap<>();

    public static void resetFilterMap() {

        filterMap.put("brand", new ArrayList<>());
        filterMap.put("color", new ArrayList<>());
        filterMap.put("size", new ArrayList<>());
        filterMap.put("sport", new ArrayList<>());
        filterMap.put("min_price", new ArrayList<>());
        filterMap.put("max_price", new ArrayList<>());
        filterMap.put("gender", new ArrayList<>());
    }

    public static void addFilterCategory(String name, String inputValue) {
        String values[] = inputValue.split("\\|");
        filterMap.get(name).addAll(Arrays.asList(values));
    }
}
