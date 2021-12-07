import 'package:flutter/material.dart';

class CardPages extends StatelessWidget {
  const CardPages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Cards Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _CardTipo1(),
         const SizedBox(height: 30.0),
          _CardTipo2(),
          const SizedBox(height: 30.0),
            _CardTipo1(),
        ],
      ),
    );
  }

  _CardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
         const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Aqui estamos con la descripcion de la tarjeta que quiero que ustedes vean para que sepan que es lo que quiero que ustedes vean'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: const Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

_CardTipo2() {
  return Card(
    child: Column(
      children: [
       const FadeInImage(
          image: NetworkImage(
              'https://img.ecartelera.com/noticias/fotos/66100/66155/1.jpg'),
          placeholder: AssetImage('image/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text('No tengo idea de que poner'),
        )
      ],
      // Image.network('https://img.ecartelera.com/noticias/fotos/66100/66155/1.jpg'),
    ),
  );
}
