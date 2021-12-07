import 'package:flutter/material.dart';

class AlertsPages extends StatelessWidget {
  const AlertsPages({Key key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alerts'),
      ),
      body: const Center(
        child: Text('Alerts Page'),
      )  
    );
  }
}