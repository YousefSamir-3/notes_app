import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        backgroundColor: Colors.lightBlueAccent, // لبني (أزرق فاتح)
        foregroundColor: Colors.black, // لون الأيقونة
        shape: const CircleBorder(), // يخليه دايرة صريحة
        child: const Icon(Icons.add),
      ),
      body: const HomeViewBody(),
    );
  }
}
