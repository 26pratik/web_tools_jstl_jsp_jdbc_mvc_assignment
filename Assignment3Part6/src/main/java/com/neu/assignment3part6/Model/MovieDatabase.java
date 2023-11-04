/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.neu.assignment3part6.Model;

import java.util.Objects;

/**
 *
 * @author Pratik Hariya
 */
public class MovieDatabase {

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getLeadActor() {
        return leadActor;
    }

    public void setLeadActor(String leadActor) {
        this.leadActor = leadActor;
    }

    public String getLeadActress() {
        return leadActress;
    }

    public void setLeadActress(String leadActress) {
        this.leadActress = leadActress;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getLaunchYear() {
        return launchYear;
    }

    public void setLaunchYear(int launchYear) {
        this.launchYear = launchYear;
    }
    
    public MovieDatabase() {
    
    }

    public MovieDatabase(String movieName, String leadActor, String leadActress, String genre, int launchYear) {
        this.movieName = movieName;
        this.leadActor = leadActor;
        this.leadActress = leadActress;
        this.genre = genre;
        this.launchYear = launchYear;
    }
    
    private String movieName;
    private String leadActor;
    private String leadActress;
    private String genre;
    private int launchYear;

    @Override
    public String toString() {
        return "MovieDatabase{" + "movieName=" + movieName + ", leadActor=" + leadActor + ", leadActress=" + leadActress + ", genre=" + genre + ", launchYear=" + launchYear + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + Objects.hashCode(this.movieName);
        hash = 59 * hash + Objects.hashCode(this.leadActor);
        hash = 59 * hash + Objects.hashCode(this.leadActress);
        hash = 59 * hash + Objects.hashCode(this.genre);
        hash = 59 * hash + this.launchYear;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final MovieDatabase other = (MovieDatabase) obj;
        if (this.launchYear != other.launchYear) {
            return false;
        }
        if (!Objects.equals(this.movieName, other.movieName)) {
            return false;
        }
        if (!Objects.equals(this.leadActor, other.leadActor)) {
            return false;
        }
        if (!Objects.equals(this.leadActress, other.leadActress)) {
            return false;
        }
        return Objects.equals(this.genre, other.genre);
    }

    
}
