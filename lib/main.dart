import 'package:flutter/material.dart';
import 'package:swapp/screens/bid_offer_screen.dart';
import 'package:swapp/screens/homepage.dart';
import 'package:swapp/screens/login_screen.dart';
import 'package:swapp/screens/registration_screen.dart';
import 'package:swapp/screens/view_product.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
          '/': (context) => RegistrationScreen(),
          '/viewProduct': (context) => ViewProduct(),
           '/homepage': (context) => Homepage(),
          '/bidScreen': (context) => BidOfferScreen(),
          '/loginScreen':(context) => LoginScreen(),
          '/registrationScreen':(context) => RegistrationScreen()
        });
  }
}
