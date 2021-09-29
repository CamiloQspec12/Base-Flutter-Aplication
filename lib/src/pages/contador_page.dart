import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  // CreateState manual
  @override
  createState() {
    return _ContadorPageState();
  }

  // CreateState with plugin
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }

}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 20);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('!Bienvenido a mi aplicacion!'),
        ),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              'Cantidad de Clicks',
              style: _estiloTexto,
            ),
            Text(
              _contador.toString(),
              style: _estiloTexto,
            )
          ])),
      floatingActionButton: _botones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(
            Icons.restart_alt,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            //Redibuja el widget
            setState(() {});
            _contador = 0;
          },
        ),
        SizedBox(width: 25.0),
        FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            //Redibuja el widget
            setState(() {});
            _contador++;
          },
        ),
        SizedBox(width: 25.0),
        FloatingActionButton(
          child: Icon(
            Icons.exposure_minus_1,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            //Redibuja el widget
            setState(() {});
            _contador--;
          },
        )
      ],
    );
  }
}
