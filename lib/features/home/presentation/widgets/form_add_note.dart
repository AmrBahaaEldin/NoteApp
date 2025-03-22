import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/features/home/data/note_model.dart';
import 'package:notesapp/features/home/logic/add_note_cubit.dart';

import '../../../../core/widgets/customTextfield.dart';
import '../../../../core/widgets/custombuttom.dart';

class FormAddNote extends StatefulWidget {
  const FormAddNote({
    super.key,
  });

  @override
  State<FormAddNote> createState() => _FormAddNoteState();
}

class _FormAddNoteState extends State<FormAddNote> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Title",
              onSave: (value) {
                title = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "content",
              onSave: (value) {
                content = value;
              },
              maxLines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              text: "Add",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var note = NoteModel(
                      title: title!,
                      subtitle: content!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.hashCode);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  setState(() {
                    autoValidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
