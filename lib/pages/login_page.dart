import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';


class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  final _formkey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Material(

      color:context.canvasColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",fit: BoxFit.cover,height: 200.0,),
           SizedBox(
             height: 20.0,

           ),
            Text(
              "Welcome, $name", style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 30.0),
                 child: Form(
                   key: _formkey,
                   child: Column(
                     children: [
                       TextFormField(
                         decoration: InputDecoration(
                             hintText: "Enter User Name",
                             labelText: "Username",
                         ),
                         validator: (value) {
                                if(value.isEmpty){
                                return "Username Cannot be empty";
                               }
                                return null;
                              },

                           onChanged: (value){
                           name = value;
                           setState(() {
                           });
                           },
                           ),
                           TextFormField(
                           obscureText: true,
                           decoration: InputDecoration(
                           hintText: "Enter Password",
                           labelText: "Password",
                           ),
                           validator: (value)
                            {
                              if(value.isEmpty){
                              return "Password Cannot be empty";
                              }
                              else if(value.length<6){
                                return"Password is not Strong";
                              }
                              return null;
                            },
                           ),
                           SizedBox(
                           height: 40.0,
                       ),
                        Material(
                          color:context.theme.buttonColor,
                          borderRadius:BorderRadius.circular(changeButton?50:8),
                          child: InkWell(

                            onTap:() =>moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width:changeButton ? 50 : 100,
                              height: 50,
                              alignment: Alignment.center,

                              child: changeButton? Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0

                              ),),

                            ),
                          ),
                        ),

                     ],
                   ),
                 ),
            ),

          ],

        ),
      )
    );
  }
}
