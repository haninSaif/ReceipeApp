import 'package:flutter/material.dart';

import 'screen/categories_screen.dart';
import 'widgets/cat_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Recipes App',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.amberAccent,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              )),
        ),
        //        home: CategoriesScreen(),
        // initialRoute: CategoriesScreen(),
        routes: {
          '/': (ctx) => CategoriesScreen(),
          CategoryDetails.routeName: (ctx) => CategoryDetails(),
        });
  }
}
