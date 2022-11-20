import 'package:flutter/material.dart';

class CardFooterMealItem extends StatelessWidget {
  const CardFooterMealItem({
    Key? key,
    required this.duration,
    required this.complexityText,
    required this.affordabilityText,
  }) : super(key: key);

  final int duration;
  final String complexityText;
  final String affordabilityText;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(Icons.schedule),
              const SizedBox(
                width: 6.0,
              ),
              Text('$duration min'),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(Icons.work),
              const SizedBox(
                width: 6.0,
              ),
              Text(complexityText),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(Icons.attach_money),
              const SizedBox(
                width: 6.0,
              ),
              Text(affordabilityText),
            ],
          ),
        ]);
  }
}
