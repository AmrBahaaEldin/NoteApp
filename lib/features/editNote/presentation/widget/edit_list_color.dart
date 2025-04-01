import 'package:flutter/widgets.dart';
import 'package:notesapp/core/constants/colorApp.dart';
import 'package:notesapp/features/home/data/note_model.dart';

import '../../../home/presentation/widgets/item_color.dart';

class EditListColorSelected extends StatefulWidget {
  const EditListColorSelected({super.key,required this.note});
  final NoteModel note;

  @override
  State<EditListColorSelected> createState() => _EditListColorSelectedState();
}

class _EditListColorSelectedState extends State<EditListColorSelected>   {
  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex= AppColor.paletteColor.indexOf(Color(widget.note.color));
  }
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
              currentIndex=index;
              widget.note.color=AppColor.paletteColor[index].value;
              setState(() {

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