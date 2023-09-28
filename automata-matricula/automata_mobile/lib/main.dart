import 'package:automata_mobile/screens/draw_automaton.dart';
import 'package:automata_mobile/screens/read_automata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automata Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 45, 154, 147),
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ReadAutomaton(),
        '/draw': (context) {
          // Obtén el valor de matrícula de los argumentos de la ruta actual
          final args = ModalRoute.of(context)!.settings.arguments as String?;
          return DrawAutomaton(
              matricula: args ??
                  ''); // Usa el valor de los argumentos o cadena vacía si es nulo
        }
      },
    );
  }
}
