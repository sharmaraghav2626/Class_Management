/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaproject;

import java.sql.*;

/**
 *
 * @author dell2
 */
public class PConnection {
 private static String url="jdbc:mysql://localhost/project";
 private static String user="root";
 private static String password="";
 private static String path="com.mysql.jdbc.Driver";
 private static Connection con;
 public static Connection getCConnection(){
     try{
         Class.forName(path);
         con=(Connection)DriverManager.getConnection(url,user,password);
         
     }
      catch (ClassNotFoundException | SQLException e) {
       System.err.println(e.getMessage());
      }
     return con;
     
 }
 }
