package jums;

import static java.lang.System.out;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author itou
 */

//課題.3フォームから受け取ったデータ自体を格納
public class UserDataBeans {
  private String name;
  private String type;
  private String tell;
  private String comment;
  private int year;
  private int month;
  private int day;
  
 public UserDataBeans(){
   name = "";
   type = "";
   tell = "";
   comment = "";
   year = 0;
   month = 0;
   day = 0;
 }

 public void setName(String name){
    this.name = name;
     }    
 public String getName(){
     return name;
 }

  public void setType(String type){
    this.type = type;
     }    
 public String getType(){
     return type;
 }
 
  public void setTell(String tell){
    this.tell = tell;
     }    
 public String getTell(){
     return tell;
 }
 
  public void setComment(String comment){
    this.comment = comment;
     }    
 public String getComment(){
     return comment;
 }
 
  public void setYear(int year){
    this.year = year;
     }    
 public int getYear(){
     return year;
 }

 public void setMonth(int month){
    this.month = month;
     }    
 public int getMonth(){
     return month;
 }
 
 public void setDay(int day){
    this.day = day;
     }    
 public int getDay(){
     return day;
 }
}
 
 

      





