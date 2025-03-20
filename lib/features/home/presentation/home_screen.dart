import 'package:flutter/material.dart';
import 'package:notesapp/features/home/presentation/widgets/noteViewBody.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
    );
  }
}


