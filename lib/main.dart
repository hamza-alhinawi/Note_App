import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/notes_view.dart';
import 'package:note_app/constans.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
