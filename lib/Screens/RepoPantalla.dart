import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepoPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repositorio'),
        backgroundColor: Color(0xFF76e9ff),
      ),
      backgroundColor: Color(0xFFdaffff),
      body: Center(
        child: Text(
          'https://github.com/xavi/nanobits_tech',
          style: GoogleFonts.robotoMono(fontSize: 20),
        ),
      ),
    );
  }
}
