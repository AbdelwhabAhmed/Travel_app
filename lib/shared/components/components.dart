import 'package:flutter/material.dart';

Widget BookButton()=>   Container(
  padding: EdgeInsets.only(top:10,left:35,right: 20,bottom: 10,),
  height: 50,
  decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(24)


  ),
  child: Center(
    child:MaterialButton(
      onPressed: () {  },
      child: Text('Book Now'
        ,style: TextStyle(
          color:Colors.white ,
          fontWeight: FontWeight.bold,
          fontSize: 24,),

      ),
    ),
  ),



);