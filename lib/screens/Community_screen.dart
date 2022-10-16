import 'package:flutter/material.dart';

class Community_Screen extends StatefulWidget {
  static const routeName = '/Community';
  @override
  State<Community_Screen> createState() => _Community_ScreenState();
}

class _Community_ScreenState extends State<Community_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
    );
  }
}
