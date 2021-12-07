import 'package:flutter/material.dart';
import 'package:prueba/src/pages/alert_pages.dart';
import 'package:prueba/src/pages/avatar_pages.dart';
import 'package:prueba/src/pages/card_pages.dart';
import 'package:prueba/src/pages/home_pages.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/'     : (BuildContext context) => HomePages(),
    'alert' : (context) => AlertsPages(),
    'avatar': (context) => AvatarPages(),
    'card'  : (context) => CardPages(),
  };
}
