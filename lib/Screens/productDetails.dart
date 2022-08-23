import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  const ProductDetails({Key? key, required this.title}) : super(key: key);
  static const routeName = '/product - details';
  @override
  Widget build(BuildContext context) {
    final ProductId =
        ModalRoute.of(context)?.settings.arguments as String; //is the Id!
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
    );
  }
}
