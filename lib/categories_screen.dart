import 'package:flutter/material.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisExtent: 100,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: dummyCategories
          .map((catData) =>
              CategoryItem(title: catData.title, color: catData.color))
          .toList(),
    );
  }
}
