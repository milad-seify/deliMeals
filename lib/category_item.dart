import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  const CategoryItem({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        //margin: const EdgeInsets.only(bottom: 6.0),
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
        child: Text(title),
      ),
    );
  }
}
