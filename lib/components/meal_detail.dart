import 'package:flutter/material.dart';

import 'dummy-data.dart';

class MealDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealId =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final selectMeals =
        DUMMY_MEALS.firstWhere((meal) => meal.id == mealId['id']);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectMeals.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectMeals.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Ingredients',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ingredients(selectMeals),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Steps',
                style: TextStyle(fontSize: 20),
              ),
            ),
            steps(selectMeals)
          ],
        ),
      ),
    );
  }

  Widget ingredients(selectMeals) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 300,
      child: ListView.builder(
        itemCount: selectMeals.ingredients.length,
        itemBuilder: (context, index) => Card(
          color: Theme.of(context).accentColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(selectMeals.ingredients[index],
                style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  Widget steps(selectMeals) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 300,
      child: ListView.builder(
        itemCount: selectMeals.steps.length,
        itemBuilder: (context, index) => Card(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              children: <Widget>[
                Text('#${index + 1}',
                  style: TextStyle(color: Colors.red)),
                SizedBox(width: 4),
                Container(
                  child: Text(selectMeals.steps[index]),
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
