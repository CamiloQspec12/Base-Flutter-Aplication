import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = TextStyle(fontSize: 20);
  int contador = 0;

  accionar() {
    this.contador = this.contador + 1;
  }

  @override
  Widget build(context) {
    // TODO: implement build
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
              style: estiloTexto,
            ),
            Text(
              contador.toString(),
              style: estiloTexto,
            )
          ])),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 35,
        ),
        onPressed: () => print('It is Working'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
