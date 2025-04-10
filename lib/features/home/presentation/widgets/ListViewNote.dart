import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/core/widgets/customItemNote.dart';
import 'package:notesapp/features/home/data/note_model.dart';
import 'package:notesapp/features/home/logic/show/note_cubit.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NoteCubit>(context).notes??[];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) => CustomItemNote(
            note: notes[index],
          ),
        );
      },
    );
  }
}
