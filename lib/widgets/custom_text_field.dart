import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.padding,
    required this.hintText,
    required this.labelText,
    this.maxLength,
    this.maxLlines,
    required this.onSaved,
  });
  final EdgeInsets? padding;
  final String? hintText;
  final String? labelText;
  final int? maxLength;
  final int? maxLlines;
  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: maxLlines,
      maxLength: maxLength,
      cursorColor: kPrimaryColor,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
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
