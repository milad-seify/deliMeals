// import 'package:flutter/material.dart';

// import './categories_screen.dart';
// import './favorites_screen.dart';

// class TabBarScreen extends StatefulWidget {
//   static const String id = '/tab-bar-screen';
//   const TabBarScreen({super.key});

//   @override
//   State<TabBarScreen> createState() => _TabBarScreenState();
// }

// class _TabBarScreenState extends State<TabBarScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 0,
//       animationDuration: const Duration(seconds: 1),
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Meals'),
//           bottom: const TabBar(tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.category),
//               text: 'categories',
//             ),
//             Tab(
//               icon: Icon(Icons.star),
//               text: 'favorites',
//             ),
//           ]),
//         ),
//         body:
//             const TabBarView(children: [CategoriesScreen(), FavoritesScreen()]),
//       ),
//     );
//   }
// }
