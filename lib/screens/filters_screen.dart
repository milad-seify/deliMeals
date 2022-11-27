import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const String id = '/filters_screen';
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFree = false;
  bool _isLactoseFree = false;
  bool _isVegan = false;
  bool _isVegetarian = false;

  Widget buildSwitchListTile(
      {required String title,
      required String subTitle,
      required bool currentValue,
      required Function(bool val) updateValue}) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subTitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            alignment: Alignment.center,
            child: const Text(
              'Adjust Your Meal Selection',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              buildSwitchListTile(
                  title: 'Gluten-Free',
                  subTitle: 'Only Include Gluten-free Meals',
                  currentValue: _isGlutenFree,
                  updateValue: ((val) {
                    setState(() {
                      _isGlutenFree = val;
                    });
                  })),
              buildSwitchListTile(
                  title: 'Lactose-Free',
                  subTitle: 'Only Include Lactose-free Meals',
                  currentValue: _isLactoseFree,
                  updateValue: ((val) {
                    setState(() {
                      _isLactoseFree = val;
                    });
                  })),
              buildSwitchListTile(
                  title: 'Vegetarian',
                  subTitle: 'Only Include Vegetarian Meals',
                  currentValue: _isVegetarian,
                  updateValue: ((val) {
                    setState(() {
                      _isVegetarian = val;
                    });
                  })),
              buildSwitchListTile(
                  title: 'Vegan',
                  subTitle: 'Only Include Vegan Meals',
                  currentValue: _isVegan,
                  updateValue: ((val) {
                    setState(() {
                      _isVegan = val;
                    });
                  })),
            ],
          ))
        ],
      ),
    );
  }
}
