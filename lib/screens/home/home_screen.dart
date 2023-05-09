import 'package:diary_app_ui/screens/home/widgets/item_note.dart';
import 'package:diary_app_ui/screens/note/note_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Diary', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: const [
          ItemNote(color: Colors.green),
          ItemNote(color: Colors.lightBlue),
          ItemNote(color: Colors.red),
          ItemNote(color: Colors.blueGrey),
          ItemNote(color: Colors.purple),
          ItemNote(color: Colors.pink),
          ItemNote(color: Colors.orange),
          ItemNote(color: Colors.black),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const NoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
