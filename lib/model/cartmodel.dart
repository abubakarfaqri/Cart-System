import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [
    ['Purse', '\$ 40', 'assets/images/purse.png', ],
    ['Shampoo', '\$ 5', 'assets/images/Shampo.jpg', ],
    ['Shoes', '\$ 10', 'assets/images/shoes.jpg', ],
    ['Watch', '\$ 20', 'assets/images/watch.jpg', ],
  ];
  List _cartItems = [];

  get shopItmes => _shopItems;
  get cartItems => _cartItems;
  //add item to cart
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  //remove item to cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }
}