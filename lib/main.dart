import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingg_appp/cart_screen.dart';
import 'package:shoppingg_appp/product_list_screen.dart';
import 'package:shoppingg_appp/productlist.dart';
import 'package:shoppingg_appp/provider.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart App',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (ctx) => ProductListScreen(),
          '/cart': (ctx) => CartScreen(),
        },
      ),
    );
  }
}


