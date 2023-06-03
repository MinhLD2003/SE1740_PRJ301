/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class TimeConversion {
    public Timestamp convertDatetoTimestamp(Date date) {
        Timestamp timestamp = new Timestamp(date.getTime());
        return timestamp;
    }
}
