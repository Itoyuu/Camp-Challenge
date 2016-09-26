/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;



import java.util.ArrayList;
/**
 *
 * @author Yuu
 */
abstract class Human {
 public ArrayList<Integer> myCards = new ArrayList<>();
 abstract public Integer open();
 abstract public void setCard(ArrayList<Integer>setCard);
 abstract public Boolean checkSum();
 }