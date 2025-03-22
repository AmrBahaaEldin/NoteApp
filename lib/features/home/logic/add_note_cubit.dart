import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/core/constants/keyApp.dart';
import 'package:notesapp/features/home/data/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{

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
