import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/add/add_note_cubit.dart';
import '../../logic/add/add_note_state.dart';
import 'form_add_note.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5, tileMode: TileMode.clamp),
      child: BlocProvider(
        create: (context) => AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteError) {
              debugPrint(state.message);
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return
              AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: Container(
                color: Colors.black,
                child: Padding(
                  padding:  EdgeInsets.only(
                      right: 16.0,left: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: FormAddNote(),
                ),
                            ),
              );
          },
        ),
      ),
    );
  }
}
