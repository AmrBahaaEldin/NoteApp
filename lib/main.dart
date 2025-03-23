import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/core/constants/keyApp.dart';
import 'package:notesapp/features/home/logic/show/note_cubit.dart';

import 'core/widgets/observer_bloc.dart';
import 'features/home/data/note_model.dart';
import 'features/home/presentation/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KeyApp.keyBox);


  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit()..fetchNote(),
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: GoogleFonts
                .poppins()
                .fontFamily,
            brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
