import "package:flutter/material.dart";
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swapp/components.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/models/reusable_textfield.dart';
import 'package:swapp/styles.dart';

class LoginScreen extends HookWidget {
  LoginScreen({Key? key}) : super(key: key);
  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(20));

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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: largeTextFont,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                    ReusableTextField(hintText: "Email"),
                    ReusableTextField(
                      hintText: "Password",
                      obscureText: true,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No account yet?"),
                        TextButton(
                            onPressed: () => Navigator.pushNamed(context, "/registrationScreen"), child: Text("Reigster"))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
