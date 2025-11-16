import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.onTap, this.isLoading = false});
  final VoidCallback onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(color: Colors.black),
                )
              : Text(
                  'Add',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}
