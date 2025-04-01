import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/colorApp.dart';
import '../../logic/add/add_note_cubit.dart';
import 'item_color.dart';

class ListColorSelected extends StatefulWidget {
  const ListColorSelected({
    super.key,
  });

  @override
  State<ListColorSelected> createState() => _ListColorSelectedState();
}

class _ListColorSelectedState extends State<ListColorSelected> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        itemCount: AppColor.paletteColor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                 currentIndex = index;
                 BlocProvider.of<AddNoteCubit>(context).color =
                     AppColor.paletteColor[currentIndex];
              });
            },
            child: ItemColor(
              indexColor: index,
              isSelected: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
