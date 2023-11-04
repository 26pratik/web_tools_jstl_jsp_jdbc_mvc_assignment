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
public class Music {
    
    private ArrayList<String> music = new ArrayList<String>();

    public Music() {
        music.add("qwerty");
        music.add("ereacd");
        music.add("eqfwvfrw");
        music.add("wrfteg");
        
    }

    
    
    public ArrayList<String> getMusic() {
        return music;
    }

    public void setMusic(ArrayList<String> music) {
        this.music = music;
    }
    
    
}
