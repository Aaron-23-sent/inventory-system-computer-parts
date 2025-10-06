/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package uisystem;

import java.sql.*;
import java.util.Scanner;

/**
 *
 * @author PC-03
 */
public class DataBaseConnection {

    Connection conn;
    final String mySql = "jdbc:mysql://localhost:3306/inventorysystem";
    String dbUser = "root1", dbPassword = "";

    public void connect() {
        try {
            conn = DriverManager.getConnection(mySql, dbUser, dbPassword);
            System.out.println("Connected!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void fetch() {
        try {
            String query = "SELECT * FROM user";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()) {
                //String username = rs.
            }
        } catch (Exception e) {

        }
    }
    
    public boolean accountValid (String username, String password) {
        try {
            String query = "SELECT * from user where username = '" + username +"' AND password = '"+ password +"'";
            System.out.println("Query: " + query);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if(rs.next()) {
                return true;
            }
            conn.close();
           return false;
        } catch (SQLException ex) {
            
            ex.printStackTrace();
            return false;
        }
        
        
    }
    
    public ResultSet getComputerParts() {
        try {
            String query = "SELECT * from item";
            System.out.println("Query: " + query);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
           
            return rs;
           
        } catch (SQLException ex) {
            
            ex.printStackTrace();
            return null;
        }
    }
     public void submitComputerPart(String name, int quantity, double price, 
             String brand, String model, String last_update, String created_by) {
        try {
            String query = "INSERT INTO "
                    + "item (name, quantity, price, brand, model, last_update, created_by) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, name);
            pstmt.setInt(2, quantity);
            pstmt.setDouble(3, price);
            pstmt.setString(4, brand);
            pstmt.setString(5, model);
            pstmt.setString(6, last_update);
            pstmt.setString(7, created_by);
            
            pstmt.executeUpdate();
            System.out.println("DATA INSERTED");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void insert(String username, String password) {
        try {
            String query = "INSERT INTO "
                    + "my_table (username, password) "
                    + "VALUES (?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.executeUpdate();
            System.out.println("DATA INSERTED");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
