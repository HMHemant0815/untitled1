import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  final String name="Crazysemicolon ;";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HM Web Tech"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Youtube Channel $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
