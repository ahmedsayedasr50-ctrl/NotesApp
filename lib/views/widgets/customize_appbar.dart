import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/customize_search_icon.dart';

class CustomizeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: TextStyle(fontSize: 30)),
        Spacer(),
        CustomizeSearchIcon(),
      ],
    );
  }
}
