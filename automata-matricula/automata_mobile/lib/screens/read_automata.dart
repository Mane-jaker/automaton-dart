import 'package:flutter/material.dart';

class ReadAutomaton extends StatefulWidget {
  const ReadAutomaton({super.key});

  @override
  State<ReadAutomaton> createState() => _ReadAutomatonState();
}

class _ReadAutomatonState extends State<ReadAutomaton> {
  TextEditingController textFieldController = TextEditingController();

  @override
  void dispose() {
    // Limpia el controlador cuando se destruye el widget para evitar pérdida de memoria
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Automatas'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ingresa la matrícula:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: TextField(
                      controller: textFieldController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hoverColor: Colors.white,
                          hintText: 'Escribe la matrícula aquí',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        // Obtiene el valor del TextField
                        String matricula = textFieldController.text;

                        // Navega a la siguiente página y pasa la matrícula como argumento
                        Navigator.pushNamed(context, '/draw',
                            arguments: matricula);
                      },
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
