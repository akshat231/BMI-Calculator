import 'package:flutter/material.dart';



const activecolorcode = Color(0xFF1d1e33);
const inactivecolorcode = Color(0xFF0A0E21);
const textcolorcode = Color(0xFF8D8E98);
 Color malecardcolor = activecolorcode;
  Color femalecardcolor = activecolorcode;
  Color maleicon = Colors.white;
  Color femaleicon = Colors.white;

  int weight_value = 70;
  int age_value = 18;

  double height_value = 130;
  int gender=0;

  void updatecolor(int gender) {
    if (gender == 1) {
      malecardcolor = Colors.white;
      maleicon = Colors.black;
      femalecardcolor = activecolorcode;
      femaleicon = Colors.white;
    } 
    else {
      femalecardcolor = Colors.white;
      femaleicon = Colors.black;
      malecardcolor = activecolorcode;
      maleicon = Colors.white;
    }
  }
