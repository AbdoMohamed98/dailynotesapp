
import 'package:dailynotes/models/addnotemodel.dart';
import 'package:dailynotes/views/addnotebuttonsheetview.dart';
import 'package:dailynotes/widgets/customsearchicon.dart';
import 'package:dailynotes/widgets/notescard.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


class Notesview extends StatefulWidget {
  const Notesview({super.key});

  @override
  State<Notesview> createState() => _NotesviewState();
}

class _NotesviewState extends State<Notesview> {
  Addnotemodel ? note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Notes', style: TextStyle(color: Colors.white)),
        actions: [Customsearchicon()],
      ),
     body: ValueListenableBuilder(
  valueListenable: Hive.box<Addnotemodel>('notesbox').listenable(),
  builder: (context, Box<Addnotemodel> box, _) {
    if (box.isEmpty) {
      return const Center(child: Text("No notes yet", style: TextStyle(color: Colors.white)));
    }
    return ListView.builder(
      itemCount: box.length,
      itemBuilder: (context, index) {
        final note = box.getAt(index);
        return Notescard(
          title: note!.title,
          subtitle: note.subtitle,
          date: note.date,
        );
      },
    );
  },
),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Addnotebuttonsheet();
            },
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
