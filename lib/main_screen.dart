import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final appBar = Platform.isIOS
        ? const CupertinoNavigationBar(
            middle: Text('deliMeals'),
          )
        : AppBar(title: const Text('deliMeals'));

    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: appBar as ObstructingPreferredSizeWidget,
            child: const CategoriesScreen(),
          )
        : Scaffold(
            appBar: appBar as PreferredSizeWidget,
            body: const CategoriesScreen(),
          );
  }
}
