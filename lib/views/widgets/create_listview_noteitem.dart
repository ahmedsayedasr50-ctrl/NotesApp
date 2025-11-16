import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class CreateListViewNoteItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(itemBuilder: (context , index ){
      return Padding(padding: EdgeInsets.symmetric(vertical: 8.0),child: NoteItem(),);
    }));
  }}