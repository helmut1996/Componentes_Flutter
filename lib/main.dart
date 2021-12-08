import 'package:flutter/material.dart';
import 'package:prueba/src/pages/home_pages.dart';
import 'package:prueba/src/router/routers.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
     routes: getRoutes(),
     onGenerateRoute: (settings){
       print('ruta llamada: ${settings.name}');
       return MaterialPageRoute(
         builder: (BuildContext context)=> const HomePages()
       );
     },
    );
  }
}