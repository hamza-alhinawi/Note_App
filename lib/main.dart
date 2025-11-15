import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/notes_view.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: NotesView(),
      ),
    );
  }
}
