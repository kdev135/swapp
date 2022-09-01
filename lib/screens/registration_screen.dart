import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swapp/components.dart';
import 'package:swapp/constants.dart';
import 'package:swapp/styles.dart';

import '../models/reusable_textfield.dart';

class RegistrationScreen extends HookWidget {
  RegistrationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final email = useState(" ");
    final password = useState(" ");
    var isLoading = useState(false);
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
                    textAlign: TextAlign.center,
                  ),
                  ReusableTextField(
                    hintText: "Email",
                    fieldVariable: email,
                  ),
                  ReusableTextField(
                    hintText: "Password",
                    fieldVariable: password,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      isLoading.value = true;
                    
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(email: email.value, password: password.value)
                            .then((value) {
                          isLoading.value = false;

                          Navigator.pushNamed(context, "/homepage");
                        });
                      } on FirebaseAuthException catch (authError) {
                        isLoading.value = false;
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("${authError.message}"),
                        ));
                      }
                    },
                    child: isLoading.value
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
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
