import 'dart:async';
import 'dart:math';
import 'package:actividad4/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class JuegoImagenes extends StatefulWidget {
  const JuegoImagenes({super.key});

  @override
  _JuegoImagenesState createState() => _JuegoImagenesState();
}

class _JuegoImagenesState extends State<JuegoImagenes> {
  int puntaje = 0;
  double posicionX = 0.0;
  double posicionY = 0.0;
  late Timer timer;
  bool imagenVisible = false;
  final random = Random();
  bool juegoActivo = false;

  void iniciarJuego() {
    setState(() {
      puntaje = 0;
      imagenVisible = true;
      juegoActivo = true;
    });

    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (!juegoActivo) return;
      if (imagenVisible) {
        setState(() {
          puntaje = puntaje > 0 ? puntaje - 2 : 0; // No baja de cero
        });
      }
      cambiarPosicion();
    });
  }

  void pararJuego() {
    setState(() {
      juegoActivo = false;
      imagenVisible = false;
    });
    timer.cancel();
  }

  void cambiarPosicion() {
    setState(() {
      posicionX = random.nextDouble() * (MediaQuery.of(context).size.width - 50);
      posicionY = random.nextDouble() * (MediaQuery.of(context).size.height - 50);
      imagenVisible = true;
    });
  }

  void pulsarImagen() {
    setState(() {
      puntaje += 1; // Suma 1 punto al pulsar
      imagenVisible = false; // Oculta la imagen hasta que cambie de posición
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego de Imágenes'),
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          if (imagenVisible)
            Positioned(
              left: posicionX,
              top: posicionY,
              child: GestureDetector(
                onTap: pulsarImagen,
                child: Image.asset(
                  'assets/images/john_pork.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              'Puntaje: $puntaje',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: juegoActivo ? null : iniciarJuego,
                    child: const Text('Iniciar Juego'),
                  ),
                  const SizedBox(width: 20),  
                  ElevatedButton(
                    onPressed: juegoActivo ? pararJuego : null,
                    child: const Text('Parar Juego'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFdaffff),
    );
  }
}
