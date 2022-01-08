import 'package:flutter/material.dart';
import 'package:hive_diary_flutter/models/note.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({Key? key}) : super(key: key);

  @override
  State<NotesListScreen> createState() => _NotesListScreenState();
}

class _NotesListScreenState extends State<NotesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('N O T E L Y'),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: Hive.box<Note>('note').listenable(),
            builder: (context, Box<Note> box, _) {
              return ListView.builder(
                itemCount: box.length,
                itemBuilder: (context, i) {
                  final note = box.getAt(i);

                  return Card(
                    child: ListTile(
                      title: Text(note!.title.toString()),
                    ),
                  );
                },
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Approve'),
          icon: Icon(Icons.edit),
          backgroundColor: Colors.pink,
        ));
  }
}
