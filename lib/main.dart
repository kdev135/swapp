import 'package:flutter/material.dart';
import 'package:swapp/screens/bid_offer_screen.dart';
import 'package:swapp/screens/homepage.dart';
<<<<<<< HEAD
import 'package:swapp/screens/login_screen.dart';
import 'package:swapp/screens/registration_screen.dart';
import 'package:swapp/screens/view_product.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

=======
import 'package:swapp/screens/view_product.dart';

void main() {
>>>>>>> e02a482aee1435188b858521115b9f027dee1b18
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        routes: {
          '/': (context) => RegistrationScreen(),
          '/viewProduct': (context) => ViewProduct(),
          '/bidScreen': (context) => BidOfferScreen(),
          '/loginScreen':(context) => LoginScreen(),
          '/registrationScreen':(context) => RegistrationScreen()
        });
=======
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
      ),

      routes: {
    '/': (context) =>  Homepage(),
    '/viewProduct': (context) => ViewProduct(),
    '/bidScreen': (context) => BidOfferScreen()
  }
    );
>>>>>>> e02a482aee1435188b858521115b9f027dee1b18
  }
}
