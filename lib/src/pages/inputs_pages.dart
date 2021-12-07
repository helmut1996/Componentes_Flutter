import 'package:flutter/material.dart';
class InputsPages extends StatefulWidget {
  InputsPages({Key key}) : super(key: key);

  @override
  _InputsPagesState createState() => _InputsPagesState();
}

class _InputsPagesState extends State<InputsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
    );
  }
}