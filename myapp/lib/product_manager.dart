import 'package:flutter/material.dart';

import '/products.dart';

import 'product_control.dart';
class ProductManager extends StatefulWidget {
  // const ProductManager({super.key});

  final String startproduct;

  ProductManager({this.startproduct = 'Tested'});

  @override
  State<ProductManager> createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startproduct);
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
      Products(_products),
      ],
    );
  }
}
