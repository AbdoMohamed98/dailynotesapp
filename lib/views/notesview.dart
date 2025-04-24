import 'package:dailynotesapp/widgets/addnotebuttonsheet.dart';
import 'package:dailynotesapp/widgets/customsearchicon.dart';
import 'package:dailynotesapp/widgets/notescard.dart';
import 'package:flutter/material.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
         Customsearchicon(),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Notescard(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
      
      showModalBottomSheet(context: context, builder: (context) {
        return Addnotebuttonsheet();
      });

      },
      backgroundColor: Colors.blue,
      child:  Icon(
        Icons.add,
        color: Colors.white,
      ),
      ));
  }
}
