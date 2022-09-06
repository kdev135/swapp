import 'package:firebase_auth/firebase_auth.dart';
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
    final email = useState(" ");
    final password = useState(" ");
    var _isLoading = useState(false);
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
                    Text("Login",
                        style: largeTextFont,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        textAlign: TextAlign.center),
                    ReusableTextField(
                      hintText: "eg. ellie23@email.com",
                      fieldVariable: email,
                      labelText: "Email",
                    ),
                    ReusableTextField(
                      labelText: "Password",
                      hintText: "",
                      fieldVariable: password,
                      obscureText: true,
                      maxLines:1
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        _isLoading.value = true;
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(email: email.value, password: password.value)
                              .then((value) {
                            _isLoading.value = false;

                            Navigator.pushNamed(context, "/homepage");
                          });
                        } on FirebaseAuthException catch (authError) {
                          _isLoading.value = false;
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("${authError.message}"),
                          ));
                        }
                      },
                      child: _isLoading.value
                          ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                          : Text(
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
                            onPressed: () => Navigator.pushNamed(context, "/registrationScreen"),
                            child: Text("Register"))
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
