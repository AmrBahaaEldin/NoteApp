import 'package:flutter/material.dart';

import '../../../../core/constants/colorApp.dart';

class ItemColor extends StatelessWidget {
  const ItemColor(
      {super.key, required this.isSelected, required this.indexColor});

  final bool isSelected;
  final int indexColor;

  @override
  Widget build(BuildContext context) {
    return isSelected ?
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: CircleAvatar(
        radius: 36,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: AppColor.paletteColor[indexColor],
        ),
      ),
    ) :
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: AppColor.paletteColor[indexColor],
      ),
    );
  }
}