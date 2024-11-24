import 'package:flutter/material.dart';

class InstagramFooter extends StatelessWidget {
  const InstagramFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, // Ajusta la altura que prefieras
      color: Colors.white, // Color de fondo opcional
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.search, color: Colors.black),
          Icon(Icons.add_box_outlined, color: Colors.black),
          Icon(Icons.favorite_border, color: Colors.black),
          Icon(Icons.person_outline, color: Colors.black),
        ],
      ),
    );
  }
}
