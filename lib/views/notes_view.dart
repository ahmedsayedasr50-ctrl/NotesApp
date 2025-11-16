import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/create_listview_noteitem.dart';
import 'package:notes_app/views/widgets/customize_appbar.dart';
import 'package:notes_app/views/widgets/customize_sheet.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed:
              () {
                showModalBottomSheet(
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ) ,
                context: context,
                builder: (context) {
                  return CustomizeSheet();
                },
              );
              },
          child: Icon(Icons.add),
        ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
        margin: EdgeInsets.all(10),
        child: Column(children: [CustomizeAppBar(), CreateListViewNoteItem()]),
      ),
    );
  }
}
