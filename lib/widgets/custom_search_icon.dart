import 'package:flutter/material.dart';

class CustomSearchIcoin extends StatelessWidget {
  const CustomSearchIcoin({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withValues(alpha: 0.04),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon)),
    );
  }
}
