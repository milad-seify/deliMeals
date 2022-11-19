import 'package:flutter/material.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  //static const String id = '/categories-screen';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //TODO : Use MediaQuery
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        //mainAxisExtent: 100,
      ),
      children: dummyCategoriesData
          .map(
            (catData) => CategoryItem(
                id: catData.id, title: catData.title, color: catData.color),
          )
          .toList(),
    );
  }
}
