import 'package:flutter/material.dart';
import 'package:contador_app/screens/counter_screen.dart';
// import 'package:contador_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

// Un widget es una clase comun y corriente
class MyApp extends StatelessWidget {
  // crea un constructor constante de mi clase
  const MyApp({Key? key}) : super(key: key);

  // Todo widget tiene un metodo build
  @override
  Widget build(BuildContext context) {
    // debo retornar lo que sea pero siempre y cuando sea un widget
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
