import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questions_pratice/Toturial_Pratice/Model/Product.dart';
import 'package:questions_pratice/Toturial_Pratice/product_Provider/CartProvider.dart';
import 'package:questions_pratice/Toturial_Pratice/product_Provider/productProvider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var productProvider = Provider.of<ProductProvider>(context);
    var products = productProvider.product;

    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          Consumer<CartProvider>(
            builder: (context, cart, child) {
              return Badge(
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                ),
                label: Text(cart.items.length.toString()),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product product = products[index];
          return ProductTile(product: product);
        },
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {

    var cartParovider = Provider.of<CartProvider>(context, listen: false
    );

    return ListTile(
      title: Text(product.name),
      subtitle: Text('\$ ${product.price.toStringAsFixed(2)}'),
      trailing: IconButton(
          onPressed: () {
            cartParovider.addToCart(product);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${product.name} added to cart')),
            );
          },
          icon: Icon(Icons.add_shopping_cart),

      ),
    );
  }
}
