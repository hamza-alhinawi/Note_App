import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/constans.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color = Colors.redAccent;
  addNote(NoteModel noteModel) async {
    noteModel.color = color!.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(noteModel);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
