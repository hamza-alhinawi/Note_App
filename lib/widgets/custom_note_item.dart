import 'package:flutter/material.dart';
import 'package:note_app/Views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
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
          color: Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 9.0),
                child: Text(
                  'build your career with thrwat',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 25),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                '20/10/2024',
                style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
