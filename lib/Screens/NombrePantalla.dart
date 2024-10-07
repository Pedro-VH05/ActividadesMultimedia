import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NombrePantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre y Apellidos'),
        backgroundColor: Color(0xFF76e9ff),
      ),
      backgroundColor: Color(0xFFdaffff),
      body: Center(
        child: Text(
          'Pedro Vigara Haro',
          style: GoogleFonts.lato(fontSize: 30),
        ),
      ),
    );
  }
}
