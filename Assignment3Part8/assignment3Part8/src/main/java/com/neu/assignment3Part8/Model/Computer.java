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
public class Computer {
    
    private ArrayList<String> computer = new ArrayList<String>();

    public Computer() {
        
        computer.add("qwewqewqeqw");
        computer.add("gtrstgsetg");
        computer.add("fregtaafrwf");
        computer.add("tgesre");
    }

    public ArrayList<String> getComputer() {
        return computer;
    }

    public void setComputer(ArrayList<String> computer) {
        this.computer = computer;
    }
    
    
}
