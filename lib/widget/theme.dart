import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme{
  static ThemeData lightTheme(BuildContext context) =>ThemeData(

      primarySwatch: Colors.teal,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkblueish,
      accentColor: darkblueish,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
      ));
  static ThemeData  DarkTheme(BuildContext context) =>ThemeData(
    brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      buttonColor: lightblueish,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,

        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
  ));

  //colors

  static Color creamColor=Color(0xfff5f5f5);
  static Color darkcreamColor=Vx.gray900;
  static Color lightblueish=Vx.indigo500;
  static Color darkblueish=Color(0xff403b58);


}