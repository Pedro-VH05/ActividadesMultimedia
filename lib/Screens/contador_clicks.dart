import 'package:actividad4/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 0; // Variable del contador

  void sumar() {
    setState(() {
      contador++;
    });
  }

  void restar() {
    setState(() {
      contador--;
    });
  }

  void reiniciar() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de Clics"),
      ),
      drawer: const MenuLateral(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra los widgets en la pantalla
        children: [
          // Texto del contador centrado
          Text(
            'Contador: $contador',
            style: const TextStyle(
              fontSize: 48, // Tamaño del texto
              fontWeight: FontWeight.bold, // Estilo en negrita
            ),
          ),
          const SizedBox(height: 20), // Espaciado entre texto y botones

          // Botones en una fila
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: restar,
                child: const Text('-'),
              ),
              ElevatedButton(
                onPressed: reiniciar,
                child: const Text('Reiniciar'),
              ),
              ElevatedButton(
                onPressed: sumar,
                child: const Text('+'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
