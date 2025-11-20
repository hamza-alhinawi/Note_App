import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/edit_note_view.dart';
import 'package:note_app/cubits/notes_cubits/notes_cubit.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(noteModel: noteModel);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                maxLines: 1,
                noteModel.title,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 9.0),
                child: Text(
                  noteModel.content,
                  maxLines: 2,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 18,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  // var box = Hive.box<NoteModel>('notes');
                  // var noteModel = box.getAt;
                  noteModel.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: Icon(
                  Icons.delete,
                  color: const Color.fromARGB(255, 13, 7, 7),
                  size: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                noteModel.date.toString().split(' ')[0],
                style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
