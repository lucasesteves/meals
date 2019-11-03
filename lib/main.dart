import 'package:flutter/material.dart';
import 'package:meals/components/food.dart';
import 'package:meals/components/home.dart';
import 'package:meals/components/meal_detail.dart';
import 'package:meals/components/restaurant.dart';
import 'package:meals/components/settings.dart';
import 'package:meals/components/tabs.dart';
import 'package:meals/components/tabs_bottom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context)=>TabsBottomPage(),
        '/categories': (context)=>FoodPage(),
        '/food-detail': (context)=>MealDetail(),
        '/restaurant': (context)=>RestaurantPage(),
        '/settings': (context)=>SettinsPage(),
      },
      // onGenerateRoute: (settings){
      //   return MaterialPageRoute(builder: (context)=>FoodPage());
      // },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (context)=>HomePage());
      },
    );
  }
}


