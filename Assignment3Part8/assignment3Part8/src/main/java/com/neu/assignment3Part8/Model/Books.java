/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neu.assignment3Part8.Model;

import java.util.ArrayList;

/**
 *
 * @author Pratik Hariya
 */
public class Books {
    
    private ArrayList<String> books = new ArrayList<String>();

    public Books() {
        books.add("Java servlet programming [29.95]");
        books.add("Dynamic programming [29.95]");
        books.add("C++ [30.00]");
        books.add("Web tools [25.50]"); 
    }

    public ArrayList<String> getBooks() {
        return books;
    }

    public void setBooks(ArrayList<String> books) {
        this.books = books;
    }
    
//    String book1 = "Java servlet programming [29.95]";
//    String book2 = "Dynamic programming [29.95]";
//    String book3 = "C++ [30.00]";
//    String book4 = "Web tools [25.50]";
    
}
