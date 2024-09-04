import 'package:flutter/material.dart';

abstract class Fonts {
  static const textStyle1 = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: "Schyler",
      fontSize: 26);

  static const textStyle2 = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(179, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18);

  static const textStyle3 = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18,
      fontWeight: FontWeight.bold);

  static const dogName = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      
      // fontFamily: "Schyler",
      fontSize: 16);

  static const dogType = TextStyle(
      fontWeight: FontWeight.w900,
      color: Color.fromARGB(179, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 14
      //fontSize: 8.937
  );

  static const dogAge = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(167, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 13);

  static const first = TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, //fontFamily: 'Schyler',
    shadows: [
      Shadow(blurRadius: 1.4, color: Color.fromARGB(255, 94, 87, 87), offset: Offset(2, 1),)]);

  static const second = TextStyle(
      fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black38);

  static const third = TextStyle(
      color:Color.fromARGB(255, 114, 108, 108));

  /*static const successText = TextStyle(
      color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold);*/
  static const successText = TextStyle(color: Colors.green,fontSize:22,fontWeight: FontWeight.bold,
    shadows: [Shadow(blurRadius: 5.0, color: Colors.greenAccent, offset: Offset(1, 1),),],);




static const appbar = TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold,);
  static const location = TextStyle(fontSize:17, color: Colors.white, fontWeight: FontWeight.w700,);

  static const tasks = TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize:25,decoration: TextDecoration.underline,
      shadows: [Shadow(blurRadius: 5.0, color: Color.fromARGB(255, 94, 87, 87), offset: Offset(2, 2),)]);
}