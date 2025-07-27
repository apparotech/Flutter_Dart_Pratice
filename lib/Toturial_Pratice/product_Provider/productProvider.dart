import 'package:flutter/cupertino.dart';
import 'package:questions_pratice/Toturial_Pratice/Model/Product.dart';

class ProductProvider with ChangeNotifier {

  List<Product> _products =   [
  Product(id: 'p1', name: 'Laptop', price: 1500),
  Product(id: 'p2', name: 'Smartphone', price: 700),
  Product(id: 'p3', name: 'HeadPhone', price: 900),
  ];

  List<Product> get product => _products;

}