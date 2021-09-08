import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final textStyle = TextStyle(fontSize: 25);
  final contador = 10;

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
              Text('Clicks!!!!', style: textStyle),
              Text('$contador', style: textStyle),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('Hello'),
          tooltip: 'boton',
          child: Icon(Icons.add),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.
      ),
    );
  }
}
