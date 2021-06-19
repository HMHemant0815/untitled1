import 'package:flutter/material.dart';
import 'package:untitled1/pages/cart_page.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/utils/routes.dart';
import 'package:untitled1/widget/theme.dart';


void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context) ,
      debugShowCheckedModeBanner: false,
      darkTheme:MyTheme.DarkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute:(context)=>Homepage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.cartRoute : (context) => CartPage(),
      },
    );
  }
}
