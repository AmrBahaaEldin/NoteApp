
import 'package:flutter/cupertino.dart';

import '../../../../core/widgets/customAppBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(title:"Edit Note",icon: CupertinoIcons.check_mark,),
        ],
      ),
    );
  }

}