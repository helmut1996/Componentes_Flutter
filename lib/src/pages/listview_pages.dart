import 'dart:async';

import 'package:flutter/material.dart';

class ListviewPages extends StatefulWidget {
  ListviewPages({Key key}) : super(key: key);

  @override
  _ListviewPagesState createState() => _ListviewPagesState();
}

class _ListviewPagesState extends State<ListviewPages> {
  // String url = "https://picsum.photos/200/300?random=2";
  ScrollController _scrollController = ScrollController();
  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregarimagenes();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_agregarimagenes();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
          controller: _scrollController,
          itemBuilder: (context, int index) {
            final imagen = _listaNumeros[index];
            return FadeInImage(
              placeholder: AssetImage('image/jar-loading.gif'),
              image:
                  NetworkImage('https://picsum.photos/200/300?random=$imagen'),
            );
          },
          itemCount: _listaNumeros.length),
    );
  }

  Future<Null> obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregarimagenes();
    });
    return Future.delayed(duration);
  }

  void _agregarimagenes() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
  }

  Future<Null> _fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregarimagenes();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
