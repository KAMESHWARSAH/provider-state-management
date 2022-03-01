import 'package:flutter/material.dart';
class ShoppingCard with ChangeNotifier{
  List<String> _shoppingCart = ['shirt', 'shoes', 'paint'];
  int get count => _shoppingCart.length;
  List<String> get cart => _shoppingCart;

  void addIteam(String item){
    _shoppingCart.add(item);
    notifyListeners();
  }


}