import 'package:flutter/material.dart';

class TextFile extends StatefulWidget {
  TextFile({Key key}) : super(key: key);

  @override
  _TextFileState createState() => _TextFileState();
}

class _TextFileState extends State<TextFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("text"),),
       body: Container(child: RaisedButton(child: Text("d;flkajd"),onPressed: (){
         Navigator.of(context).maybePop();
       },)),
    );
  }
}