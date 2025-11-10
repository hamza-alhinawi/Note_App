import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText: 'Write a Title', labelText: 'Title'),
            SizedBox(height: 10),
            CustomTextField(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              hintText: 'Write a Content',
              labelText: 'Content',
              maxLength: 10000,
            ),
            SizedBox(height: 20),

            CustomBottom(),
          ],
        ),
      ),
    );
  }
}
