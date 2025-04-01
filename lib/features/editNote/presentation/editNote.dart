import 'package:flutter/material.dart';
import 'package:notesapp/features/editNote/presentation/widget/EditNoteViewBody.dart';
import 'package:notesapp/core/widgets/customAppBar.dart';
import 'package:notesapp/features/home/data/note_model.dart';

class EditNote extends StatelessWidget {
  final NoteModel note;

  const EditNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note),
    );
  }
}
