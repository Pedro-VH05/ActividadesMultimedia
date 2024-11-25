import 'package:actividad4/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class DesafioPantalla extends StatelessWidget {
  const DesafioPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafío Circular'),
        backgroundColor: const Color(0xFF76e9ff),
      ),
      drawer: const MenuLateral(),
      backgroundColor: const Color(0xFFdaffff),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.green,
                width: 10,
              ),
            ),
            width: 280,
            height: 280,
            alignment: Alignment.center,
            child: const Text(
              'H',
              style: TextStyle(
                fontSize: 180,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
