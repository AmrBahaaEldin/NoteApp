import 'package:flutter/material.dart';

import '../constants/colorApp.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function ()? onTap;
  final bool isLoading;
  const CustomButton({super.key,required this.text,this.onTap,this.isLoading=false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
        BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.primaryColor
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child:isLoading? CircularProgressIndicator(color: Colors.white,): Text(text,style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
        ),

      ),
    );
  }
}
