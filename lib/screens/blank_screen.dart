import 'package:flutter/material.dart';

class BlankScreen extends StatelessWidget {
  final String title;

  const BlankScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Blank screen'),
      ),
      body: Center(
        child: Text('$title'),
      ),
    );
  }
}
