/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.neu.assignment3part7.dao;

import com.neu.assignment3part7.Model.Books;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Pratik Hariya
 */
public class BooksJDBCDao {

    public int addBook(Books book) {
        
        int result = 0;
        Connection connection = null;
        PreparedStatement preparedStatement =null;
        
        try {
            DatabaseConnection databaseConnection = new DatabaseConnection();
            connection = databaseConnection.connect(); 
            
            preparedStatement = connection.prepareStatement("INSERT INTO BOOKS (isbn, title, authors, price) VALUES (?,?,?,?)");
            preparedStatement.setString(1, book.getIsbn());
            preparedStatement.setString(2, book.getTitle());
            preparedStatement.setString(3, book.getAuthors());
            preparedStatement.setDouble(4, book.getPrice());
            
            result = preparedStatement.executeUpdate();
            result = 1;
        } catch(Exception e) {
            e.printStackTrace();
            result = 0;
        }
        
        return result;
    }
    
}
