import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class CustomNoteListView extends StatelessWidget {
  const CustomNoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomNoteItem();
        },
      ),
    );
  }
}
