import 'package:flutter/material.dart';

class SliderPages extends StatefulWidget {
  SliderPages({Key key}) : super(key: key);

  @override
  _SliderPagesState createState() => _SliderPagesState();
}

class _SliderPagesState extends State<SliderPages> {
  double _valorSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSilider(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        )
      ),
    );
  }

  Widget _crearSilider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        print(valor);
        setState(() {
          _valorSlider = valor;
        });
      },
    );
 }

 Widget _crearImagen() {
   return Image(
    
     image: NetworkImage('https://i.pinimg.com/originals/ce/0d/9e/ce0d9ead299eb0ee550b2e5b9306b882.png'),
     width: _valorSlider,
     fit: BoxFit.contain,
   );
 }
}