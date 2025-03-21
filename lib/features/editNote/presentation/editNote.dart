import 'package:flutter/material.dart';
import 'package:notesapp/features/editNote/presentation/widget/EditNoteViewBody.dart';
import 'package:notesapp/core/widgets/customAppBar.dart';


class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),
    );
  }
}

