import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';

class MyHomePage extends StatefulWidget {
  static const String id = '/';

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPageIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': const FavoritesScreen(), 'title': 'Your Favorite'},
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text(_pages[_selectedPageIndex]['title'],
                style: const TextStyle(fontFamily: 'Ralway')),
          )
        : AppBar(
            title: Text(
            _pages[_selectedPageIndex]['title'],
            style: const TextStyle(fontFamily: 'Ralway'),
          ));
    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: appBar as ObstructingPreferredSizeWidget,
            child: _pages[_selectedPageIndex]['page'],
          )
        : Scaffold(
            appBar: appBar as PreferredSizeWidget,
            body: _pages[_selectedPageIndex]['page'],
            drawer: const SafeArea(
              child: MainDrawer(),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: _selectPage,
              currentIndex: _selectedPageIndex,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.white,
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context)
                        .bottomNavigationBarTheme
                        .backgroundColor,
                    icon: const Icon(Icons.category),
                    label: 'Categories'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context)
                        .bottomNavigationBarTheme
                        .backgroundColor,
                    icon: const Icon(Icons.star),
                    label: 'Favorites')
              ],
            ),
          );
  }
}
