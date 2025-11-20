import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({super.key, required this.hint, this.maxLines =1});
  final String? hint;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? Colors.white),
    borderRadius: BorderRadius.circular(8),
  );
}
