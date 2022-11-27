import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(
      {super.key, required this.id, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    Future selectCategory(BuildContext ctx) {
      //TODO : CupertinoPageRoute
      return Navigator.of(ctx).pushNamed(
        CategoryMealsScreen.id,
        arguments: {'id': id, 'title': title},
      );
    }

    return Material(
      //TODO : Remove Material
      elevation: 6,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: () => selectCategory(context),
        borderRadius: BorderRadius.circular(15),
        splashColor: Theme.of(context).primaryColor,
        highlightColor: Colors.red.withOpacity(0.5),
        child: Ink(
          //margin: const EdgeInsets.only(bottom: 6.0),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey,
            //     offset: Offset(0.0, 1.0), //(x,y)
            //     blurRadius: 6.0,
            //   ),
            // ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
