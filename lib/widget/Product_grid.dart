import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Product_item.dart';
import '../Providers/Product_provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product_provider>(context);
    final Products = productData.items;
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: Products.length,
        itemBuilder: (context, i) => ProductItem(
          id: Products[i].id,
          title: Products[i].title,
          imageUrl: Products[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
