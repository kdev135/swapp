
import 'package:flutter/material.dart';

import '../screens/view_product.dart';


/// Template for a product with its details on the homepage
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ViewProduct(),
          ),
        );
      }),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.blue,
                height: 90,
                width: 180,
              ),
              const SizedBox(
                height: 5,
              ),
              Text("Label"),
              Text('ksh. 2300')
            ],
          ),
        ),
      ),
    );
  }
}
