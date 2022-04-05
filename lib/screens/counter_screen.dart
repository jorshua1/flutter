import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  // El key: sirve para identificar un widget dentro del contexto
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('CounterScreen'),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Centra el objeto de acuerdo al widget de mayor tamaño
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Numero de clicks',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () {
            setState(() {
              counter++;
            });
            print('Hola');
          }),
    );
  }
}
