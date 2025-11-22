import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/cubits/notes_cubits/notes_cubit.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_note_color_list.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;
                widget.noteModel.save();
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: widget.noteModel.title,
              labelText: 'Title',
              onchanged: (value) {
                title = value;
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
            ),
            SizedBox(height: 20),
            CustomTextField(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              hintText: widget.noteModel.content,
              labelText: 'Content',
              maxLength: 10000,
              maxLlines: 5,
              onchanged: (value) {
                content = value;
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
            ),
            EditNoteColorList(noteModel: widget.noteModel),
          ],
        ),
      ),
    );
  }
}
