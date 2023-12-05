import 'package:flutter/material.dart';
import 'package:homework/models/product_model.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({required this.pro});
  final Product pro;
  static const String id = 'ProductPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pro.title),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: ListView(children: [
          Image.asset(
            pro.image,
            width: double.infinity,
            height: 500,
          ),
          SizedBox(
            height: 5,
          ),
          Text('Title: ${pro.title}'),
          SizedBox(
            height: 5,
          ),
          Text('Description: ${pro.desc}'),
          SizedBox(
            height: 5,
          ),
          Text(
            'Price : ${pro.price}',
            style: TextStyle(fontSize: 24, color: Colors.green),
          )
        ]),
      ),
    );
  }
}
