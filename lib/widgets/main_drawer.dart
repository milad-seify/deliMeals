import 'package:flutter/material.dart';

import '../screens/main_screen.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildIcon(String title, IconData icon,
      {required VoidCallback selectHandler}) {
    return ListTile(
      leading: Icon(icon, size: 30),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      onTap: selectHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 6.0,
      // shape: ShapeBorder.,
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Cooking up!',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.red),
            ),
          ),
          buildIcon(
            'Meals',
            Icons.restaurant,
            selectHandler: () =>
                Navigator.of(context).pushReplacementNamed(MyHomePage.id),
          ),
          buildIcon(
            'Filters',
            Icons.settings,
            selectHandler: () =>
                Navigator.of(context).pushReplacementNamed(FiltersScreen.id),
          ),
        ],
      ),
    );
  }
}
