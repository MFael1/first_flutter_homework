import 'package:flutter/material.dart';
import 'package:homework/components/data.dart';
import 'package:homework/components/product_widget.dart';
import 'package:homework/models/product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    List<Product> products = [];
    for (int i = 0; i < 8; ++i) {
      products.add(Product(
          id: data[i]['id'] as int,
          title: data[i]['title'],
          category: data[i]['category'],
          desc: data[i]['description'],
          price: data[i]['price'],
          image: data[i]['image']));
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('Fast Shoping'),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) =>
                ProductWidget(pro: products[index]),
          ),
        ));
  }
}
