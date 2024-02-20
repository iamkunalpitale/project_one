import 'package:flutter/material.dart';
import 'package:project_one/model/coffee_item.dart';

import 'coffee_item_detail_screen.dart';

class CoffeeItemCard extends StatelessWidget {
  final CoffeeItem coffeeItem;

  CoffeeItemCard({required this.coffeeItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoffeeItemDetailsScreen(coffeeItem: coffeeItem),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Hero(
                tag: coffeeItem.name,
                child: Image.asset(
                  coffeeItem.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeItem.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${coffeeItem.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}