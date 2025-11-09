import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_bottom_sheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        shape: CircleBorder(),
        backgroundColor: Color(0xff4DC6AD),
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: NotesViewBody(),
    );
  }
}
