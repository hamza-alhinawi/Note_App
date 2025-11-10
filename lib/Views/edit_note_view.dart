import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 20),

            CustomTextField(hintText: 'Write a Title', labelText: 'Title'),
            SizedBox(height: 10),
            CustomTextField(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              hintText: 'Write a Content',
              labelText: 'Content',
              maxLines: 10000,
            ),
          ],
        ),
      ),
    );
  }
}
