import 'package:flutter/material.dart';

import '../model/coffee_item.dart';
import 'coffee_item_card.dart';

class CoffeeShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: coffeeItems.length,
        itemBuilder: (context, index) {
          return CoffeeItemCard(coffeeItem: coffeeItems[index]);
        },
      ),
    );
  }
}