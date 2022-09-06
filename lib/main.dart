import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swapp/screens/bid_offer_screen.dart';
import 'package:swapp/screens/homepage.dart';
import 'package:swapp/screens/login_screen.dart';
import 'package:swapp/screens/registration_screen.dart';
import 'package:swapp/screens/upload_product_screen.dart';
import 'package:swapp/screens/view_product.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final  _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        routes: {
          '/': (context) =>_auth.currentUser != null ? Homepage(): LoginScreen(),
          '/viewProduct': (context) => ViewProduct(),
          '/homepage': (context) => Homepage(),
          '/bidScreen': (context) => BidOfferScreen(),
          '/loginScreen': (context) => LoginScreen(),
          '/registrationScreen': (context) => RegistrationScreen(),
          '/uploadProductScreen': (context) => UploadProductScreen()
        });
  }
}
