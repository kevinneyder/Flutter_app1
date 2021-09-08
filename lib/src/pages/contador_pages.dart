import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageSate();
  

}

class _ContadorPageSate extends State <ContadorPage> {

  final _textStyle = TextStyle(fontSize: 25);
  int _contador = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('# Clicks!!!!', style: _textStyle),
              Text('$_contador', style: _textStyle),
            ],
          ),
        ),
        floatingActionButton: _crearBotones(),
        ),
    );
  }

  Widget _crearBotones() {

    return Row( 
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox( width: 30.0, ),
        FloatingActionButton(
          onPressed: _reiniciar,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.add),
        ),
        SizedBox( width: 5.0, ),
        FloatingActionButton(
          onPressed: _restar,
          child: Icon(Icons.remove),
        ),
      ],
    );
  }

  void _agregar(){
    setState(() => _contador++);
  }
  void _restar(){
    setState(() => _contador--);
  }
  void _reiniciar(){
    setState(() => _contador = 0);
  }

}