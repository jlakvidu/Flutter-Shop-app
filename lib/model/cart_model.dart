import 'package:flutter/cupertino.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "250.00", "assets/avacado.png", 4],
    ["Banana", "110.00", "assets/banana.jpg", 4.2],
    ["Chicken", "395.00", "assets/chicken.jpg", 4.8],
    ["Water", "125.00", "assets/water.jpg", 3.8],
    ["Avocado", "250.00", "assets/avacado.png", 4],
    ["Banana", "110.00", "assets/banana.jpg", 4.2],
    ["Chicken", "395.00", "assets/chicken.jpg", 4.8],
    ["Water", "125.00", "assets/water.jpg", 3.8],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index) {
    String itemName = _shopItems[index][0];
    String itemPrice = _shopItems[index][1];
    String imagePath = _shopItems[index][2];

    int existingIndex = _cartItems.indexWhere((item) => item[0] == itemName);
    if (existingIndex != -1) {
      _cartItems[existingIndex][3]++;
    } else {
      _cartItems.add([itemName, itemPrice, imagePath, 1]);
    }
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  void updateItemQuantity(int index, int newQuantity) {
    if (newQuantity > 0) {
      _cartItems[index][3] = newQuantity;
    } else {
      _cartItems.removeAt(index);
    }
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]) * _cartItems[i][3];
    }
    return totalPrice.toStringAsFixed(2);
  }
}
