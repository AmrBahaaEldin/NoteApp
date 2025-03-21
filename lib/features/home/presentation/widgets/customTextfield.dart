import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colorApp.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor:AppColor.primaryColor,
      decoration: InputDecoration(
        hintText: 'title',
        focusedBorder: buildBorder(color: AppColor.primaryColor),
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({
    Color ?color
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
          color: color ?? Colors.white
      ),

    );
  }
}