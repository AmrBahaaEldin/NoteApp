import 'package:flutter/material.dart';
import 'package:notesapp/features/home/presentation/widgets/customAppBar.dart';

import 'customItemNote.dart';
import 'customListView.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(),
          Expanded(child: CustomListView()),

        ],
      ),
    );
  }
}