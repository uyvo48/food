import 'package:flutter/cupertino.dart';
import '../class/product.dart';

class CounterProvider extends ChangeNotifier {
  final List<Product> _listProduct = [
    Product('assets/icon/icon_food1.png', 'Onagi sushi', 54, '0', 0),
    Product(
        'assets/icon/icon_food2.png',
        'Shrimp',
        54,
        'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat.',
        0),
    Product('assets/icon/icon_food3.png', 'Spacy fresh crab', 35, '0', 0),
  ];

  List<Product> get listProduct => _listProduct;

  void add(Product product) {
    product.count++;
    notifyListeners();
  }

  void decrease(Product product) {
    if (product.count > 0) {
      product.count--;
      notifyListeners();
    }
  }
}
