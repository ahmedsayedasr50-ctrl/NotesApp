import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_textfeild.dart';

class CustomizeSheet extends StatelessWidget {
  const CustomizeSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            children: [
              SizedBox(height: 32),
              CustomTextfeild(hint: "title"),
              SizedBox(height: 16),
              CustomTextfeild(hint: "content", maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
