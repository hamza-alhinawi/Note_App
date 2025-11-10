import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 24.0, left: 24, top: 10),
        child: Column(
          children: [
            CustomAppBar(title: 'Notes', icon: Icons.search),
            CustomNoteListView(),
          ],
        ),
      ),
    );
  }
}
