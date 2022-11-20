import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.affordability,
      required this.complexity,
      required this.duration})
      : super(key: key);

  final String title;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final int duration;

  void selectCat() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectCat,
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                  child: Image.network(imageUrl,
                      height: 250, width: double.infinity, fit: BoxFit.cover),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
