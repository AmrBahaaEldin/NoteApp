import 'package:flutter/material.dart';

import '../../../../core/constants/colorApp.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.primaryColor
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(
        child: Text("Save",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),

    );
  }
}
