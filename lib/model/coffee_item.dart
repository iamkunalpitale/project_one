class CoffeeItem {
  final String name;
  final String image;
  final double price;

  CoffeeItem({required this.name, required this.image, required this.price});
}

final List<CoffeeItem> coffeeItems = [
  CoffeeItem(name: 'Espresso', image: 'assets/espresso.jpeg', price: 2.99),
  CoffeeItem(name: 'Latte', image: 'assets/latte.jpeg', price: 3.99),
  CoffeeItem(name: 'Cappuccino', image: 'assets/cappuccino.jpeg', price: 4.99),
  CoffeeItem(name: 'Mocha', image: 'assets/mocha.jpeg', price: 4.99),
];