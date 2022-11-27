import 'package:flutter/material.dart';

import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';
import 'card_footer_mail_item.dart';

class MealItem extends StatelessWidget {
  const MealItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.removeItem})
      : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final int duration;
  final Function removeItem;

  Future selectMeal(BuildContext context) => Navigator.of(context)
          .pushNamed(
        MealDetailScreen.id,
        arguments: id,
      )
          .then(
        (result) {
          if (result != null) removeItem(result);
        },
      );

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      //  break;
      case Complexity.Challenging:
        return 'Challenging';
      //  break;
      case Complexity.Hard:
        return 'Hard';
      //   break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      //    break;
      case Affordability.Pricey:
        return 'Pricey';
      //   break;
      case Affordability.Luxurious:
        return 'Luxurious';
      //  break;
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget buildImage() => Image.network(imageUrl,
        height: 250, width: double.infinity, fit: BoxFit.cover);
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        elevation: 5.0,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15.0),
                  ),
                  // clipBehavior: Clip.antiAlias,
                  child: buildImage(),
                ),
                Positioned(
                  bottom: 20.0,
                  right: 10.0,
                  child: Container(
                    color: Colors.black54,
                    width: 200,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              child: CardFooterMealItem(
                duration: duration,
                complexityText: complexityText,
                affordabilityText: affordabilityText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
