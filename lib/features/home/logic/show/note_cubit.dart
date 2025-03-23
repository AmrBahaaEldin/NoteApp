import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/core/constants/keyApp.dart';

import '../../data/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>?notes;
  fetchNote(){
    var noteBox =Hive.box<NoteModel>(KeyApp.keyBox);
   notes= noteBox.values.toList();
   emit(NoteSuccess());


  }
}
