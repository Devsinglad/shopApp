import 'package:flutter/material.dart';

import '../widget/Product_grid.dart';

class ProductOverview extends StatelessWidget {
  ProductOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myfoods'),
        centerTitle: true,
      ),
      body: ProductGrid(),
    );
  }
}
