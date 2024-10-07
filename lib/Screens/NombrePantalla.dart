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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pedro Vigara Haro',
              style: GoogleFonts.lato(fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              'Repositorio:',
              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'https://github.com/Pedro-VH05/Actividad1Multimedia',
              style: GoogleFonts.lato(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
