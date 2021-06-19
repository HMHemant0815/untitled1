import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/models/catalog.dart';
import 'package:untitled1/utils/routes.dart';
import 'package:untitled1/widget/home_widget/catalog_header.dart';
import 'package:untitled1/widget/home_widget/catalog_list.dart';
import 'package:untitled1/widget/theme.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final String name="Crazysemicolon ;";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    
    await Future.delayed(Duration(seconds: 2));
    final catalogjson= await rootBundle.loadString("assets/files/catalog.json");
    var decodedData=jsonDecode(catalogjson);
    var productsData=decodedData["products"];

    CatalogModel.items= List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
   // final dummyList=List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creamColor,

      floatingActionButton: FloatingActionButton(onPressed: ()=> Navigator.pushNamed(context, MyRoutes.cartRoute),

        backgroundColor: MyTheme.darkblueish,
      child: Icon(CupertinoIcons.cart),
      ),
      body:SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CatalogHeader(),
             if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
               CatalogList().py16().expand()
             else
                CircularProgressIndicator().centered().expand(),

            ],
          ),
        ),
      )
    );
  }
}

