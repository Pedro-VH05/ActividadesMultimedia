import 'package:flutter/material.dart';

class IconosPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iconos'),
        backgroundColor: Color(0xFF76e9ff),
      ),
      backgroundColor: Color(0xFFdaffff),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.home, size: 50, color: Colors.amber),
            Icon(Icons.favorite, size: 50, color: Colors.pinkAccent),
            Icon(Icons.settings, size: 50, color: Colors.teal),
            Icon(Icons.person, size: 50, color: Colors.purple),
            Icon(Icons.star, size: 50, color: Colors.lightGreen),
          ],
        ),
      ),
    );
  }
}
