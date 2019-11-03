import 'package:flutter/material.dart';

import 'package:meals/components/food.dart';

import './dummy-data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES.map((catData)=>dataValue(catData.title,catData.id,catData.color)).toList(),
    );
  }

  Widget dataValue(String title,String id, Color color) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,'/categories',arguments:{'id':id,'title':title});
      },
      splashColor: Theme.of(context).primaryColor,
      child:Container(
        padding: EdgeInsets.all(15.0),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7),color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15.0)
        ),
      ),
    );
  }

  void selectCategory(){

  }
}
