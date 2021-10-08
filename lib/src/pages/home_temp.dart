import 'dart:html';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(Divider(color: Colors.red));
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Hola'),
            //leading es para la izquierda
            leading:  Icon(Icons.account_balance),
            //trailing es para la derecha
            trailing:  Icon(Icons.account_balance_wallet_outlined),
            //ontap es para el efecto de pulsar el boton
            onTap: () {
            print('Mierda');
            },
          ),
          Divider(color: Colors.red),
        ],
      );
    }).toList();

    return widgets;
  }
}
