import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.selected, required this.color});
  final bool selected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: selected
          ? CircleAvatar(
              radius: 26,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 24, backgroundColor: color),
            )
          : CircleAvatar(radius: 24, backgroundColor: color),
    );
  }
}
