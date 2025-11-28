import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/customize_search_icon.dart';

class CustomizeAppBar extends StatelessWidget {
  const CustomizeAppBar({super.key,required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
        style:const TextStyle(fontSize: 30)),
        Spacer(),
        CustomizeSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
