import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(
              'How to cook',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 20),
          _buildElementList(context,'Restaurant', Icons.restaurant,'/restaurant'),
          _buildElementList(context,'Filter', Icons.settings,'/settings')
        ],
      ),
    );
  }
  Widget _buildElementList(BuildContext context, String titleElement,IconData imgIcon,String route){
    return ListTile(
      leading: Icon(imgIcon, size: 26),
      title: Text(
        titleElement,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(route);
      },
    );
  }
}