import 'package:flutter/material.dart';
import 'package:swapp/components.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/styles.dart';

import '../models/reusable_textfield.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: pagePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            swappLogo,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "R E G I S T E R",
                    style: largeTextFont,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                  ReusableTextField(
                    hintText: "Email",
                  ),
                  ReusableTextField(hintText: "Password"),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "REGISTER",
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?"),
                      TextButton(onPressed: () => Navigator.pushNamed(context, "/loginScreen"), child: Text("Login"))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
