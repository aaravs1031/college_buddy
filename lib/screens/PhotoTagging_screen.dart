import 'package:flutter/material.dart';

class PhotoTagging_screen extends StatefulWidget {
  static const routeName = '/Photo-Tagging';
  @override
  State<PhotoTagging_screen> createState() => _PhotoTagging_screenState();
}

class _PhotoTagging_screenState extends State<PhotoTagging_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Tagging'),
      ),
    );
  }
}
