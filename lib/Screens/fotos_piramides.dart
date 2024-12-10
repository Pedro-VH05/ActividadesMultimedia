import 'package:actividad4/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class PiramideScreen extends StatelessWidget {
  const PiramideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pirámide de Imágenes"),
      ),
      drawer: const MenuLateral(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Fila superior (1 imagen)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/john_pork.jpg',
                    width: 100,
                    height: 100,
                  ),
                  const Text('John Pork'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20), // Espaciado entre filas

          // Fila central (2 imágenes)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/balatro.jpg',
                    width: 100,
                    height: 100,
                  ),
                  const Text('Balatro'),
                ],
              ),
              const SizedBox(width: 20), // Espaciado entre imágenes
              Column(
                children: [
                  Image.asset(
                    'assets/images/parkour.jpg', 
                    width: 100,
                    height: 100,
                  ),
                  const Text('Parkour'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20), // Espaciado entre filas

          // Fila inferior (3 imágenes)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/relax.jpg', 
                    width: 100,
                    height: 100,
                  ),
                  const Text('Relax'),
                ],
              ),
              const SizedBox(width: 20), // Espaciado entre imágenes
              Column(
                children: [
                  Image.asset(
                    'assets/images/tagged_photo3.jpg',
                    width: 100,
                    height: 100,
                  ),
                  const Text('Sigma'),
                ],
              ),
              const SizedBox(width: 20), // Espaciado entre imágenes
              Column(
                children: [
                  Image.asset(
                    'assets/images/tagged_photo6.jpg',
                    width: 100,
                    height: 100,
                  ),
                  const Text('Phone down'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
