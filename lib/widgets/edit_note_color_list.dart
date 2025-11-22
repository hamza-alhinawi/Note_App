import 'package:flutter/material.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  int? currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.noteModel.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              selected: currentIndex == index,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}
