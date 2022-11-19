import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String id = '/category-male-screen';

  const CategoryMealsScreen({super.key});

  // final String categoryId;
  // final String categoryTitle;
  //
  // const CategoryMealsScreen(
  //     {Key? key, required this.categoryId, required this.categoryTitle})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    //TODO : check Platform Io
    return Scaffold(
      appBar: AppBar(
        //    automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (contex, index) {
          return Text('test');
        },
        itemCount: 40,
      ),
    );
  }
}
