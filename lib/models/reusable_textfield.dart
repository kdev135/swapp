
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReusableTextField extends HookWidget {
  ReusableTextField({
    Key? key,
    required this.hintText,
    this.obscureText =false
  }) : super(key: key);
 final bool  obscureText ;
 final String hintText;
  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          isDense: true,
         
          hintText: hintText,
         // contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          border: outlineInputBorder,
        ),
      ),
    );
  }
}