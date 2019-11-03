import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';

class SettinsPage extends StatefulWidget {
  @override
  _SettinsPageState createState() => _SettinsPageState();
}

class _SettinsPageState extends State<SettinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filter'),),
      //drawer: MainDrawer(), //faz com que essa pagina pegue o menu 
      body: Center(child: Text('Filter'),),
    );
  }
}