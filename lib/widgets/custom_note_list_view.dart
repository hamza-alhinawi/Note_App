import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/cubits/notes_cubits/notes_cubit.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class CustomNoteListView extends StatefulWidget {
  const CustomNoteListView({super.key});

  @override
  State<CustomNoteListView> createState() => _CustomNoteListViewState();
}

class _CustomNoteListViewState extends State<CustomNoteListView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return CustomNoteItem(noteModel: notes[index]);
            },
          ),
        );
      },
    );
  }
}
