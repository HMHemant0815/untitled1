import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/utils/routes.dart';


void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(

        primarySwatch: Colors.teal,
         fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
            primarySwatch: Colors.green,

      ),
      //initialRoute: "/home",
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute:(context)=>Homepage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
