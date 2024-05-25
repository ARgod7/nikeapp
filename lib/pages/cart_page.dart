import 'package:flutter/material.dart';
import 'package:nikeapp/components/cart_item.dart';
import 'package:nikeapp/model/cart.dart';
import 'package:nikeapp/model/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
