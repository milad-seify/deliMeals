import 'package:flutter/material.dart';

import './screens/main_screen.dart';
import './screens/category_meals_screen.dart';

void main() => runApp(const MyApp());

//TODO : set private
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO : ADD ScrollBar
    return MaterialApp(
      title: 'deliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              // titleLarge: const TextStyle(
              //   fontSize: 20,
              //   fontFamily: 'RobotoCondensed',
              //   fontWeight: FontWeight.bold,
              // ),
            ),
      ),
      // home: const MyHomePage(),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => const MyHomePage(),
        CategoryMealsScreen.id: (context) => const CategoryMealsScreen(),
      },
    );
  }
}
