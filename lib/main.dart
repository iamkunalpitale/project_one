import 'package:flutter/material.dart';
import 'package:project_one/screens/coffee_shop_screen.dart';

void main() {
  runApp(MyCoffeeShopApp());
}

class MyCoffeeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: CoffeeShopScreen(),
    );
  }
}
