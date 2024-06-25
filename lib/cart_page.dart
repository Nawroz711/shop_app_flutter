import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cart'),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            final cartItem = cart[index];

            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(cartItem['imageUrl'] as String),
                radius: 30,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.red,
              ),
              title: Text(
                cartItem['title'].toString(),
              ),
              subtitle: Text('size: ${cartItem['sizes']}'),
            );
          }),
    );
  }
}
