/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.neu.assignment3part6.dao;

import com.neu.assignment3part6.Model.MovieDatabase;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;

/**
 *
 * @author Pratik Hariya
 */
public class MovieDatabaseJDBCDao {

    public int insertMovie(String title, String actor, String actress, String genre, int year) {
        
        Connection connection = null;
        int value=0;
        try {
            DatabaseConnection databaseConnection = new DatabaseConnection();
            connection = databaseConnection.connect();
            QueryRunner queryRunner = new QueryRunner();
            String INSERT_MOVIES_SQL = "INSERT INTO movies (title, actor, actress, genre, year) VALUES (?, ?, ?, ?, ?);";
            value = queryRunner.update(connection, INSERT_MOVIES_SQL, title, actor, actress, genre, year);
        } catch(Exception e) {
            e.printStackTrace();
        } 
        return value;
    }

    public void searchMovies(List<MovieDatabase> movies, String value, String option) {
        
        Connection connection = null;
        Statement statement = null;
        ResultSet res = null; 
        
        try {
            DatabaseConnection dao = new DatabaseConnection();
            connection = dao.connect();
            statement = connection.createStatement();
            
            String query = "select * from movies ";
            
            if(option != null) {
                if(option.equalsIgnoreCase("title")) 
                    query += "where title='" +value+ "'";
                else if(option.equalsIgnoreCase("actor"))
                    query += "where actor='" +value+ "'";
                else if(option.equalsIgnoreCase("actress"))
                    query += "where actress='" +value+ "'";
            }
            
            res = statement.executeQuery(query);
            
            while(res.next()) {
                MovieDatabase movieDatabase = new MovieDatabase();
                movieDatabase.setMovieName(res.getString(1));
                movieDatabase.setLeadActor(res.getString(2));
                movieDatabase.setLeadActress(res.getString(3));
                movieDatabase.setGenre(res.getString(4));
                movieDatabase.setLaunchYear(Integer.parseInt(res.getString(5)));
                
                movies.add(movieDatabase);
            }
            
            res.close();
            statement.close();
            connection.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    
}
