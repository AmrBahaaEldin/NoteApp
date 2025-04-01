import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colorApp.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final int? maxLines;

  final Function(String?)? onChange;
  final String? initialValue;
  final void Function(String?)? onSave;

  const CustomTextField(
      {super.key,
      this.onChange,
      this.initialValue,
      this.hintText,
      this.maxLines,
      this.onSave});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      initialValue: initialValue,
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines ?? 1,
      cursorColor: AppColor.primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: buildBorder(color: AppColor.primaryColor),
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
