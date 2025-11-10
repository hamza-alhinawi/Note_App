import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class CustomNoteListView extends StatelessWidget {
  const CustomNoteListView({super.key});
  final List data = const [];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              bottom: 16,
              top: 10,
            ),
            child: CustomNoteItem(),
          );
        },
      ),
    );
  }
}
