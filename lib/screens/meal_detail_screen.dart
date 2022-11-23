import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const String id = '/meal-Detail-Screen';
  const MealDetailScreen({super.key});

  Widget buildContinuer(Widget child) {
    return Container(
      height: 100,
      width: 300,
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue.withOpacity(0.1)),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final argId = ModalRoute.of(context)?.settings.arguments as String;
    final mealId = dummyMealData.firstWhere(((element) => element.id == argId));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          mealId.title,
          style: const TextStyle(fontFamily: 'Ralway'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                mealId.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10.0),
            Text('Ingredients', style: Theme.of(context).textTheme.subtitle1),
            buildContinuer(
              ListView.builder(
                itemCount: mealId.ingredients.length,
                itemBuilder: ((context, index) => Card(
                      elevation: 5.0,
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(mealId.ingredients[index])),
                    )),
              ),
            ),
            Text('Steps', style: Theme.of(context).textTheme.subtitle1),
            buildContinuer(
              ListView.builder(
                itemCount: mealId.steps.length,
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                          radius: 15, child: Text('#${index + 1}')),
                      title: Text(
                        mealId.steps[index],
                        style: const TextStyle(fontSize: 11),
                      ),
                    ),
                    const Divider(color: Colors.red, height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
