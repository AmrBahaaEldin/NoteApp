import 'package:flutter/material.dart';
import 'package:notesapp/features/home/presentation/widgets/customItemNote.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => CustomItemNote(),
    );
  }
}
