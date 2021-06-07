import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imgurl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlwpzib0r4g5wAwbO6Hni07c8ty65wbo7KoQ&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.teal,
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,

                child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,

                accountName: Text("Hemant Mahawar"),
                accountEmail: Text("Admin@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgurl),
                ),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home , color: Colors.white,),
              title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                color: Colors.white,
               )),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled , color: Colors.white,),
              title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail , color: Colors.white,),
              title: Text("Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),

            ),
          ],
        ),
      ),
    );
    
  }
}
