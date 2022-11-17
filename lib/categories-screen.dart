import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[
        Text('test'),
        Text("data"),
        Text('test'),
        Text("data")
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisExtent: 100,
          crossAxisSpacing: 100,
          mainAxisSpacing: 100),
    );
  }
}
