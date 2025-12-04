import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_textfeild.dart';

class AddNoteform extends StatefulWidget {
  const AddNoteform({super.key});

  @override
  State<AddNoteform> createState() => _AddNoteformState();
}

class _AddNoteformState extends State<AddNoteform> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;

  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidatemode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextfeild(
            onSaved: (value) {
              title = value;
            },
            hint: "title",
          ),
          const SizedBox(height: 16),
          CustomTextfeild(
            onSaved: (value) {
              content = value;
            },
            hint: "content",
            maxLines: 5,
          ),
          const SizedBox(height: 36),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                var noteModel = NoteModel(
                  title: title!,
                  subtitle: content!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.toARGB32(),
                );
                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              } else {
                autovalidatemode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

