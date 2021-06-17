import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyNotesPadApp());
}

class MyNotesPadApp extends StatelessWidget {
  const MyNotesPadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
