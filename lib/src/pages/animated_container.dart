import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPages extends StatefulWidget {
  const AnimatedContainerPages({Key key}) : super(key: key);

  @override
  _AnimatedContainerPagesState createState() => _AnimatedContainerPagesState();
}

class _AnimatedContainerPagesState extends State<AnimatedContainerPages> {
  double _wudth = 50.0;
    double _height = 50.0;
    Color _color = Colors.pink;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration:const Duration(seconds: 1),
          curve: Curves.easeInOutSine,
          width: _wudth,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _animacion();
        },
      ),
    );
  }

   _animacion() {
     final random= Random();
    setState(() {

           _wudth = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255),
           random.nextInt(255),
            1);
      _borderRadius = BorderRadius.circular(100.0);
    });
}
}