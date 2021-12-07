import 'package:flutter/material.dart';
import 'package:prueba/src/providers/menu_provider.dart';
import 'package:prueba/src/utils/icono_string_utils.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes Flutter'),
        ),
        body: _Lista());
  }

  Widget _Lista() {
    return FutureBuilder(
      future: menuProvider.CargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },

      // return ListView(children: _listaItems());
    );
  }

  _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),  
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
        
      );
      opciones..add(widgetTemp)..add(const Divider());
    });
   
   return opciones;
  }
}
