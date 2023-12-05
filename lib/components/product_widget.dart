import 'package:flutter/material.dart';
import 'package:homework/models/product_model.dart';
import 'package:homework/screens/product_page.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({required this.pro});
  final Product pro;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductPage(pro: pro);
            },
          ),
        );
      },
      child: Container(
        height: 250,
        width: double.infinity,
        child: Card(
            color: Colors.white,
            elevation: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(pro.title),
                  ],
                ),
                Image.asset(
                  pro.image,
                  height: 200,
                  width: 150,
                ),
              ],
            )),
      ),
    );
  }
}
