import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_textfeild.dart';

class CustomizeSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextfeild(),
            CustomTextfeild(),
          ],
        ),
      ),
    );
  }
}
