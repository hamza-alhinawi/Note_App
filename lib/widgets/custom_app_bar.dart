import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 30)),
          Spacer(),
          CustomSearchIcoin(icon: icon),
        ],
      ),
    );
  }
}
