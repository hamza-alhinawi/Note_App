import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CustomAppBar(title: 'Edit Note', icon: Icons.yard)],
      ),
    );
  }
}
