import 'package:flutter/material.dart';

import './screens/main_screen.dart';
import './screens/category_meals_screen.dart';
import '../screens/meal_detail_screen.dart';
import './screens/categories_screen.dart';
import './screens/tabbar_screen.dart';
import './screens/bottom_tapbar_screen.dart';

void main() => runApp(const MyApp());

//TODO : set private
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO : ADD ScrollBar
    return MaterialApp(
      title: 'deliMeals',
      darkTheme: ThemeData(),
      theme: ThemeData(
        primaryColor: Colors.red.withOpacity(0.7),
        primarySwatch: Colors.pink,
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(backgroundColor: Colors.pink),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
        //     floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: ),
      ),

      // home: const MyHomePage(),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => const MyHomePage(),
        CategoryMealsScreen.id: (context) => const CategoryMealsScreen(),
        MealDetailScreen.id: (context) => const MealDetailScreen(),
//TabBarScreen.id: (context) => const TabBarScreen(),
        //      BottomTabBarScreen.id: (context) => const BottomTabBarScreen(),
      },
      onGenerateRoute: ((settings) =>
          MaterialPageRoute(builder: (context) => const CategoriesScreen())),
      onUnknownRoute: ((settings) =>
          MaterialPageRoute(builder: (context) => const CategoriesScreen())),
    );
  }
}
