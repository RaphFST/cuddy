import 'package:cuddy/Views/home/home_view.dart';
import 'package:cuddy/Views/navigation/custom_app_bar.dart';
import 'package:cuddy/Views/navigation/custom_nav_bar.dart';
import 'package:cuddy/Views/navigation/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _handleSearch() {
    // TODO Gérer la recherche
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
          title: 'Cuddy',
          selectedIndex: _selectedIndex,
          onSearchPressed: _handleSearch,
        ),
        drawer: const AppDrawer(),
        body: IndexedStack(
          index: _selectedIndex,
          children: const <Widget>[
            HomeView(), // Index 0
            //PromotionsView(), // Index 1
            //ShopView(), // Index 2
            //FidelityView(), // Index 3
            //StoreView(), // Index 4
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
