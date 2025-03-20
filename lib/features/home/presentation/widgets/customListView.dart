import 'package:flutter/material.dart';
import 'package:notesapp/features/home/presentation/widgets/customItemNote.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 14,
      separatorBuilder: (context, index) => SizedBox(height: 16,),
      itemBuilder: (context, index) => CustomItemNote(),
    );
  }
}
