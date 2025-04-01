import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
 final IconData icon;
 final void Function()? onTap;
  const CustomIcon({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withValues(alpha: .1)
        ),
        child: IconButton(
          onPressed:onTap ,
            icon: Icon(icon,color: Colors.white,size: 28,)));
  }
}