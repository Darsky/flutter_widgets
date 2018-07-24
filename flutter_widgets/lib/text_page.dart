import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {

  @override
  createState() => new _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text'),
      ),
      body: Text(
          'Hello Wotld!'),
    );
  }
}