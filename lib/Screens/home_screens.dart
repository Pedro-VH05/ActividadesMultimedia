import 'package:flutter/material.dart';
import 'package:actividad4/screens/menu_lateral.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navegable'),
        backgroundColor: const Color(0xFF76e9ff),
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Text(
          'Selecciona una opción del menú.',
        ),
      ),
    );
  }
}
