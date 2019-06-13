import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(startingProduct: {'title':'Food Tester', 'image':'assets/zhoka.jpg'},),
    );
  }
}
