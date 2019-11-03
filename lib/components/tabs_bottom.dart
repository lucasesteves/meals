import 'package:flutter/material.dart';
import 'package:meals/components/favorite.dart';
import 'package:meals/components/home.dart';
import 'package:meals/components/main_drawer.dart';

class TabsBottomPage extends StatefulWidget {
  @override
  _TabsBottomPageState createState() => _TabsBottomPageState();
}

class _TabsBottomPageState extends State<TabsBottomPage> {
  final List<Widget> _pages = [HomePage(), FavoritePage()];

  int _pageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      drawer: MainDrawer(),
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        //backgroundColor: Theme.of(context).primaryColor,
        //unselectedItemColor: Colors.white,
        //selectedItemColor: Colors.white,
        currentIndex: _pageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }

  
}
