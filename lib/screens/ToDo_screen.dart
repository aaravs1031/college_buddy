import 'package:flutter/material.dart';

class ToDo_screen extends StatefulWidget {
  static const routeName = '/ToDo';
  @override
  State<ToDo_screen> createState() => _ToDo_screenState();
}

class _ToDo_screenState extends State<ToDo_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
      ),
    );
  }
}
