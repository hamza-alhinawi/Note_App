import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.padding,
    required this.hintText,
    required this.labelText,
  });
  final EdgeInsets? padding;
  final String? hintText;
  final String? labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: kPrimaryColor),
        // suffix: Icon(Icons.search),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
