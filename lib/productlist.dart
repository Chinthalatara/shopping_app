import 'package:flutter/material.dart';
import 'package:shoppingg_appp/classproduct.dart';


class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: 'p1',
      name: 'Zipper Hoidie',
      imageUrl: 'https://nobero.com/cdn/shop/files/pink-clay_1.jpg?v=1723712846',
      price: 300,
    ),
    Product(
      id: 'p2',
      name: 'paragonfootwear',
      imageUrl: 'https://paragonfootwear.com/cdn/shop/products/k1015g_blk_1.jpg?v=1691677009&width=1024',
      price: 950,
    ),
    Product(
      id: 'p3',
      name: 'orange',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTct4QnA6zwU4tyn9vq_ADJ8Ey6RfIWK-6V6g&s',
      price: 0.8,
    ),
  ];

  List<Product> get products => [..._products];
}
