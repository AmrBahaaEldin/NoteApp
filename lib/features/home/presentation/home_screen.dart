import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/features/home/logic/add_note_cubit.dart';
import 'package:notesapp/features/home/presentation/widgets/addButtomSheet.dart';
import 'package:notesapp/features/home/presentation/widgets/noteViewBody.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade300,
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),

            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },);
        }, child: Icon(Icons.add, color: Colors.black,),),
    );
  }
}




