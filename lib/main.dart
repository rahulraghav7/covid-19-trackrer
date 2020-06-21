import 'package:flutter/material.dart';
import 'homepage.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(
      primaryColor: Color(0xff202c3b),
      brightness: Brightness.dark,
      
      ),
    )
  );
}