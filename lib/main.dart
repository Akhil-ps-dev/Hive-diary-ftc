import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_diary_flutter/pages/login.dart';
import 'package:hive_diary_flutter/pages/notes_list_screen.dart';
import 'package:hive_diary_flutter/utils/routs.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'models/note.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter<Note>(NoteAdapter());
  await Hive.openBox<Note>('note');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const NotesListScreen(),
        MyRoutes.homeRoute: (context) => const NotesListScreen(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
