import 'package:flutter/material.dart';
import 'package:prueba/src/pages/alert_pages.dart';
import 'package:prueba/src/pages/animated_container.dart';
import 'package:prueba/src/pages/avatar_pages.dart';
import 'package:prueba/src/pages/card_pages.dart';
import 'package:prueba/src/pages/home_pages.dart';
import 'package:prueba/src/pages/inputs_pages.dart';
import 'package:prueba/src/pages/listview_pages.dart';
import 'package:prueba/src/pages/slider_pages.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/'     : (BuildContext context) => HomePages(),
    'alert' : (context) => AlertsPages(),
    'avatar': (context) => AvatarPages(),
    'card'  : (context) => CardPages(),
    'animaciones': (context) => AnimatedContainerPages(),
    'inputs': (context) => InputsPages(),
    'slider': (context) => SliderPages(),
    'list': (context) => ListviewPages(),
  };
}
