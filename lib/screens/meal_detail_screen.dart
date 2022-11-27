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
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 3.0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue.withOpacity(0.1)),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal =
        dummyMealData.firstWhere(((element) => element.id == mealId));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedMeal.title,
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
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10.0),
            Text('Ingredients', style: Theme.of(context).textTheme.subtitle1),
            buildContinuer(
              ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: ((context, index) => Card(
                      elevation: 5.0,
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(selectedMeal.ingredients[index]),
                      ),
                    )),
              ),
            ),
            Text('Steps', style: Theme.of(context).textTheme.subtitle1),
            buildContinuer(
              ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                          radius: 15, child: Text('#${index + 1}')),
                      title: Text(
                        selectedMeal.steps[index],
                        style: const TextStyle(fontSize: 14),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
      ),
    );
  }
}
