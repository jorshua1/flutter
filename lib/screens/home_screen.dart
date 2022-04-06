import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // El key: sirve para identificar un widget dentro del contexto
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('HomeScreen'),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Centra el objeto de acuerdo al widget de mayor tamaño
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Numero de clicks',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '10',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one), onPressed: () {}),
    );
  }
}
