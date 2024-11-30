import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingg_appp/provider.dart';


import 'package:intl/intl.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    // Formatter for Indian Rupees
    final formatCurrency = NumberFormat.currency(locale: 'en_IN', symbol: '₹');

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cart items',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blue,
        ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (ctx, index) {
                final item = cart.items.values.toList()[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(
                    '${item.quantity} x ${formatCurrency.format(item.price)} = ${formatCurrency.format(item.quantity * item.price)}',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          cart.updateQuantity(item.id, item.quantity - 1);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          cart.updateQuantity(item.id, item.quantity + 1);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: ${formatCurrency.format(cart.totalPrice)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
