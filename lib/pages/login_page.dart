import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utils/routes.dart';


class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
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
                 child: Column(
                   children: [
                     TextFormField(
                       decoration: InputDecoration(
                           hintText: "Enter User Name",
                           labelText: "Username",
                       ),
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

                     ),
                     SizedBox(
                       height: 40.0,
                     ),
                      InkWell(
                        onTap:() async {
                          setState(() {
                            changeButton=true;
                          });
                          await Future.delayed(Duration(seconds:1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width:changeButton ? 50 : 100,
                          height: 50,
                          alignment: Alignment.center,

                          child: changeButton? Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0

                          ),),
                          decoration: BoxDecoration(
                         //   shape: changeButton?BoxShape.circle : BoxShape.rectangle,
                            color: Colors.deepPurple,
                            borderRadius:BorderRadius.circular(changeButton?50:8)
                          ),
                        ),
                      ),
                     // ElevatedButton(
                     //   child: Text("Login"),
                     //   style:TextButton.styleFrom(minimumSize: Size(190, 50)),
                     //   onPressed: (){
                     //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                     //   },
                     // )
                   ],
                 ),
            ),

          ],

        ),
      )
    );
  }
}
