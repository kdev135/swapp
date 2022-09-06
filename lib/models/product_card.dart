import 'package:flutter/material.dart';
import 'package:swapp/styles.dart';


/// Template for a product with its details on the homepage
class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.imagePath, required this.label, required this.price}) : super(key: key);
  final String imagePath;
  final String label;
  final int price;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, '/viewProduct',
            arguments: {"imagePath": imagePath, "label": label, "price": price});
      }),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  label,
                  style: productLableText,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
              Expanded(flex: 1, child: Text(price.toString()))
            ],
          ),
        ),
      ),
    );
  }
}
