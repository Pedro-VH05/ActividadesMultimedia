import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NombrePantalla extends StatelessWidget {
  const NombrePantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre y Apellidos'),
        backgroundColor: const Color(0xFF76e9ff),
      ),
      backgroundColor: const Color(0xFFdaffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pedro Vigara Haro',
              style: GoogleFonts.lato(fontSize: 30),
            ),
            const SizedBox(height: 20),
            Text(
              'Repositorio:',
              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'https://github.com/Pedro-VH05/ActividadesMultimedia',
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
