// import 'package:flutter/material.dart';

// import './categories_screen.dart';
// import './favorites_screen.dart';

// class BottomTabBarScreen extends StatefulWidget {
//   static const String id = '/bottom-tab-bar-screen';
//   const BottomTabBarScreen({super.key});

//   @override
//   State<BottomTabBarScreen> createState() => _BottomTabBarScreenState();
// }

// class _BottomTabBarScreenState extends State<BottomTabBarScreen> {
//   int _selectedPageIndex = 0;
//   final List<Map<String, dynamic>> _pages = [
//     {'page': const CategoriesScreen(), 'title': 'Categories'},
//     {'page': const FavoritesScreen(), 'title': 'Your Favorite'},
//   ];

//   void _selectPage(int index) {
//     setState(() {
//       _selectedPageIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           _pages[_selectedPageIndex]['title'],
//           style: const TextStyle(fontFamily: 'Ralway'),
//         ),
//         // automaticallyImplyLeading: false,
//       ),
//       //  drawer: Drawer(),
//       body: _pages[_selectedPageIndex]['page'],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: _selectPage,
//         currentIndex: _selectedPageIndex,
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Colors.white,
//         type: BottomNavigationBarType.shifting,
//         items: [
//           BottomNavigationBarItem(
//               backgroundColor:
//                   Theme.of(context).bottomNavigationBarTheme.backgroundColor,
//               icon: const Icon(Icons.category),
//               label: 'Categories'),
//           BottomNavigationBarItem(
//               backgroundColor:
//                   Theme.of(context).bottomNavigationBarTheme.backgroundColor,
//               icon: const Icon(Icons.star),
//               label: 'Favorites')
//         ],
//       ),
//     );
//   }
// }
