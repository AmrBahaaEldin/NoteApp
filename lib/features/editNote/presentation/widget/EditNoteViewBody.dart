import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/core/widgets/customTextfield.dart';
import 'package:notesapp/features/home/data/note_model.dart';
import 'package:notesapp/features/home/logic/show/note_cubit.dart';
import 'package:notesapp/features/home/presentation/widgets/list_color_select_view.dart';
import '../../../../core/constants/colorApp.dart';
import '../../../../core/widgets/customAppBar.dart';
import '../../../home/presentation/widgets/item_color.dart';
import 'edit_list_color.dart';
class EditNoteViewBody extends StatelessWidget {
  final NoteModel note;

  const EditNoteViewBody({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: FormEditNote(note: note),
    );
  }
}

class FormEditNote extends StatefulWidget {
  const FormEditNote({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<FormEditNote> createState() => _FormEditNoteState();
}

class _FormEditNoteState extends State<FormEditNote> {
  //GlobalKey keyState=GlobalKey<FormState>();
 String ? title, subTitle;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomAppBar(
          onTap: () {

            widget.note.title=title??widget.note.title;
            widget.note.subtitle=subTitle??widget.note.subtitle;

            widget.note.save();
            BlocProvider.of<NoteCubit>(context).fetchNote();
            Navigator.pop(context);

          },
          title: "Edit Note",
          icon: CupertinoIcons.check_mark,
        ),
        SizedBox(
          height: 50,
        ),
        CustomTextField(
          hintText: widget.note.title,
          onChange: (value) {
            title=value;
          },

        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: widget.note.subtitle,
          maxLines: 5,
          onChange: (value) {
              subTitle=value;
          },



        ),
        SizedBox(height: 30,),
        EditListColorSelected(note: widget.note,),
      ],
    );
  }
}

