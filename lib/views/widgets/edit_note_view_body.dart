import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/customize_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomizeAppBar(title: "Edit Notes", icon: Icons.check),
        ],
      ),
    );
  }
}
