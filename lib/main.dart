import 'package:flutter/material.dart';
import 'package:swapp/screens/bid_offer_screen.dart';
import 'package:swapp/screens/homepage.dart';
import 'package:swapp/screens/view_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
      ),

      routes: {
    '/': (context) =>  Homepage(),
    '/viewProduct': (context) => ViewProduct(),
    '/bidOffer': (context) => BidOfferScreen()
  }
    );
  }
}
