import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 400,
      child: Column(
        children: [
          CustomTextField(hintText: 'Write a Title', labelText: 'Title'),
          SizedBox(height: 10),
          CustomTextField(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 16),
            hintText: 'Write a Content',
            labelText: 'Content',
          ),
        ],
      ),
    );
  }
}
