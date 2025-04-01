
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../core/constants/colorApp.dart';
import '../../../../core/constants/keyApp.dart';
import '../../data/note_model.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
Color color=AppColor.paletteColor[0];
  addNote(NoteModel note) async{
    note.color=color.value;
    emit(AddNoteLoading());
   try {
     var noteKey= Hive.box<NoteModel>(KeyApp.keyBox);

    await noteKey.add(note);
     emit(AddNoteSuccess());

   } on Exception catch (e) {

     emit(AddNoteError(e.toString()));

   }


  }
}
