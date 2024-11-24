import 'package:flutter/material.dart';

class PiramideScreen extends StatelessWidget {
  const PiramideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pirámide de Imágenes"),
      ),
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
                    'assets/images/john_pork.jpg', // Cambia a tus imágenes
                    width: 100,
                    height: 100,
                  ),
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
                    'assets/images/balatro.jpg', // Cambia a tus imágenes
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(width: 20), // Espaciado entre imágenes
              Column(
                children: [
                  Image.asset(
                    'assets/images/parkour.jpg', // Cambia a tus imágenes
                    width: 100,
                    height: 100,
                  ),
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
                    'assets/images/relax.jpg', // Cambia a tus imágenes
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(width: 20), // Espaciado entre imágenes
              Column(
                children: [
                  Image.asset(
                    'assets/images/tagged_photo3.jpg', // Cambia a tus imágenes
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(width: 20), // Espaciado entre imágenes
              Column(
                children: [
                  Image.asset(
                    'assets/images/tagged_photo6.jpg', // Cambia a tus imágenes
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
