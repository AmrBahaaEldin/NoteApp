
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
             CustomTextField(hintText: "Title",),
             SizedBox(height: 20,),
             CustomTextField(hintText: "content",
             maxLines: 5,),
              SizedBox(height: 30,),

              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}

