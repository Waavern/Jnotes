// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jnotes/models/note.dart';

class EditScreen extends StatefulWidget {

  final Note? note;
  const EditScreen({super.key, this.note});

  @override
  State<EditScreen> createState() => EditScreenState();
}

class EditScreenState extends State<EditScreen> {
  // these are the controllers to take input from user for title and note content

  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentContentController = TextEditingController();

  @override
  void initState() {
    if(widget.note != null){
      _titleController.text = widget.note!.title;
      _contentContentController.text = widget.note!.content;
    }
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.all(0),
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[800]!.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                TextField(
                  controller: _titleController,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 30)),
                ),
                TextField(
                  controller: _contentContentController,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter note here..',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
                )
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Navigator.pop(context, [
              _titleController.text, _contentContentController.text
            ]);

        },
        elevation: 10,
        backgroundColor: Colors.grey.shade600,
        child: Icon(
          Icons.save,
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
