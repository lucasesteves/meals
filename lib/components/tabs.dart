import 'package:flutter/material.dart';
import 'package:meals/components/favorite.dart';
import 'package:meals/components/home.dart';


class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.category),text: 'Categories',),
              Tab(icon: Icon(Icons.star),text: 'Favorites',),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          HomePage(),FavoritePage()
        ],),
      ),
    );
  }
}
