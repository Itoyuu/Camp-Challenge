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
public class User extends Human {
public User(){};
@Override
public Integer open(){             //Aを都合のいい方に分ける。
 Integer A1 = 0;                   //J,Q,Kを10とカウントする。
 Integer A11 = 0;                  //残りを集計。
 for(Integer card:this.myCards){
 if(card== 1){
 A1 += 1;
 A11 += 11;
 }
 else if(card > 10){
 A1 += 10;
 A11 += 10;
 }
 else{
A1 += card;
A11 += card;
}
}

if(A1 <= 21 && A11 <= 21){         //ブラックジャックの手札の条件を1と11の2パターン
if(A1 <= A11){                     //で考え、それぞれを比較して、ベストな値を返す。
return A11;
}
else{
return A1;
}        
}
else if(A1 <= 21){
return A1;    
}
else if(A11 <= 21){
return A11;   
}
else{
if(A1 >= A11){
return A1;    
}
else{
return A11;    
}
}
}

@Override         
public void setCard(ArrayList<Integer> setCard){    //sedCardからmyCardに追加する。
for(Integer card: setCard){
this.myCards.add(card);
}    
}

@Override
public Boolean checkSum(){                     //引くか、引かないか。
Integer scoreSum = open();
if(scoreSum < 17){
return true;
}
else{
return false;    
}
}
}