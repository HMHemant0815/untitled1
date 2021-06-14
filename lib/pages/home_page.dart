import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/models/catalog.dart';
import 'package:untitled1/widget/drawer.dart';
import 'package:untitled1/widget/item_widget.dart';
import 'dart:convert';

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
      appBar: AppBar(
        title: Text("HM Web Tech"),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items!=null&& CatalogModel.items.isNotEmpty)?
        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,

        ), itemBuilder: (context,index){
          final item=CatalogModel.items[index];
          return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
                      ),
                    child: GridTile(
                        header: Container(
                            child: Text(
                              item.name,
                              style: TextStyle(
                              color: Colors.white,
                              ),
                            ),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                        ),

                        child: Image.network(item.image),
                        footer: Container(
                            child: Text(
                                item.price.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),

                            ) ,
                               padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent
                          ),
                        ),
          )
          );
        }, itemCount: CatalogModel.items.length,)
        :Center(child: CircularProgressIndicator(),),
      ),
      drawer: MyDrawer(),
    );
  }
}
