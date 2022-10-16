import 'package:flutter/material.dart';

class Reminder_screen extends StatefulWidget {
  static const routeName = '/Reminder';
  @override
  State<Reminder_screen> createState() => _Reminder_screenState();
}

class _Reminder_screenState extends State<Reminder_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminder'),
      ),
    );
  }
}
