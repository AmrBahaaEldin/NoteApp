import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/core/widgets/customAppBar.dart';

import '../../../../core/widgets/customItemNote.dart';
import 'ListViewNote.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(title: "Notes",icon: CupertinoIcons.search,),
          Expanded(child: CustomListView()),

        ],
      ),
    );
  }
}