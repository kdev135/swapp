import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReusableTextField extends HookWidget {
  ReusableTextField(
      {Key? key,
      required this.hintText,
      this.obscureText = false,
      this.fieldVariable,
      this.labelText,
      this.maxLines=1,
      this.textInputType = TextInputType.text})
      : super(key: key);

 final TextInputType textInputType;
  final bool obscureText;
  final String hintText;
  final fieldVariable;
 final  String? labelText;
  final int maxLines ;
  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(10));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        keyboardType: textInputType,
        maxLines: maxLines,
        onChanged: (value) {
          fieldVariable.value = value;
          print("$value from field ");
        },
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text("$labelText"),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          hintText: hintText,
          border: outlineInputBorder,
        ),
      ),
    );
  }
}
