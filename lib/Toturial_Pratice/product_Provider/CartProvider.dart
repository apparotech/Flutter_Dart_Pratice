import 'package:flutter/cupertino.dart';
import 'package:questions_pratice/Toturial_Pratice/Model/Product.dart';

class CartProvider with ChangeNotifier {

  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  void addToCart(Product product) {
    if (_items.containsKey(product.id)) {
      items.update(
          product.id, (existingItem) => CartItem(
          product: product, quantity:existingItem.quantity + 1,),
      );


    }else {
      _items.putIfAbsent(product.id, () => CartItem(product: product, quantity: 1),);

    }
  }

  void removeFromCart(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  double get totalPrice{

    return _items.values.fold(0.0,(sum, item) {
      return sum + (item.product.price *item.quantity);
    }) ;
  }

}