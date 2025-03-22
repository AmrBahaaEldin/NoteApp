
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notesapp/core/constants/colorApp.dart';
import 'package:notesapp/core/widgets/custombuttom.dart';

import '../../../../core/widgets/customTextfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
        tileMode: TileMode.clamp
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormAddNote(),
      ),
    );
  }
}

class FormAddNote extends StatefulWidget {
  const FormAddNote({
    super.key,

  });

  @override
  State<FormAddNote> createState() => _FormAddNoteState();
}
class _FormAddNoteState extends State<FormAddNote> {
  GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:autoValidateMode,
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
           CustomTextField(hintText: "Title",onSave: (value) {
             title=value;
           },),
           SizedBox(height: 20,),
           CustomTextField(hintText: "content",onSave: (value) {
             content=value;
           },
           maxLines: 5,),
            SizedBox(height: 30,),

            CustomButton(text: "Add",onTap:
              () {
               if( formKey.currentState!.validate()){
                formKey.currentState!.save();
               }
               else{
                 setState(() {
                   autoValidateMode=AutovalidateMode.always;
                 });
               }
              },),
          ],
        ),
      ),
    );
  }
}

