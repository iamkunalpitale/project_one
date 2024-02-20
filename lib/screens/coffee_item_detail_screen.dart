import 'package:flutter/material.dart';

import '../model/coffee_item.dart';

class CoffeeItemDetailsScreen extends StatelessWidget {
  final CoffeeItem coffeeItem;

  CoffeeItemDetailsScreen({required this.coffeeItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coffeeItem.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: coffeeItem.name,
              child: Image.asset(
                coffeeItem.image,
                width: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Price: \$${coffeeItem.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement add to cart functionality
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
