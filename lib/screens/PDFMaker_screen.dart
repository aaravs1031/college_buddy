import 'package:flutter/material.dart';

class PDFMaker_screen extends StatefulWidget {
  static const routeName = '/PDF-Maker';
  @override
  State<PDFMaker_screen> createState() => _PDFMaker_screenState();
}

class _PDFMaker_screenState extends State<PDFMaker_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Maker'),
      ),
    );
  }
}
