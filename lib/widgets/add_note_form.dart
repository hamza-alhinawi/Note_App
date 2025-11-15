import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Write a Title',
            labelText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 10),
          CustomTextField(
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
            hintText: 'Write a Content',
            labelText: 'Content',
            maxLength: 10000,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 20),

          CustomBottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
