import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/features/editNote/presentation/editNote.dart';
import 'package:notesapp/features/home/data/note_model.dart';
import 'package:notesapp/features/home/logic/show/note_cubit.dart';

class CustomItemNote extends StatelessWidget {
  const CustomItemNote({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
         Navigator.push(context,MaterialPageRoute(builder: (context) {
          return EditNote(note: note,);
        },));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 24,),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(note.color)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(note.title,style: TextStyle(
                color: Colors.black,
                fontSize: 26
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.subtitle,style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),),
              ),
              trailing: IconButton(onPressed: () {
                note.delete();
                BlocProvider.of<NoteCubit>(context).fetchNote();
              }, icon:Icon( CupertinoIcons.trash,color: Colors.black,size: 22,),),

            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(color:Colors.grey.shade600,fontSize: 16),),
            )
          ],
        ),

      ),
    );
  }
}
