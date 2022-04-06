import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  // El key: sirve para identificar un widget dentro del contexto
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void incrementar() {
    counter++;
    setState(() {});
  }

  void decrementar() {
    counter--;
    setState(() {});
  }

  void restablecer() {
    counter = 0;
    setState(() {});
  }

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Numero de clicks',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BotonesFlotantes(
        incrementarFn: incrementar,
        decrementarFn: decrementar,
        restablecerFn: restablecer,
      ),
    );
  }
}

class BotonesFlotantes extends StatelessWidget {
  final Function incrementarFn;
  final Function decrementarFn;
  final Function restablecerFn;

  const BotonesFlotantes({
    Key? key,
    required this.incrementarFn,
    required this.decrementarFn,
    required this.restablecerFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          backgroundColor: Colors.green,
          onPressed: () => incrementarFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure),
          onPressed: () => restablecerFn(),
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            backgroundColor: Colors.red,
            onPressed: () => decrementarFn())
      ],
    );
  }
}
