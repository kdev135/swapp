import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReusableTextField extends HookWidget {
  ReusableTextField({Key? key, required this.hintText, this.obscureText = false, this.fieldVariable}) : super(key: key);
  final bool obscureText;
  final String hintText;
  var fieldVariable;
  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        onChanged: (value) {
          fieldVariable.value = value.trim();
          print("$value from field ");
          print("${fieldVariable.value}");
        },
        obscureText: obscureText,
        decoration: InputDecoration(
          isDense: true,
          hintText: hintText,
          border: outlineInputBorder,
        ),
      ),
    );
  }
}
