import 'package:flutter/material.dart';

class FotosPantalla extends StatelessWidget {
  const FotosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fotos en Fila'),
        backgroundColor: const Color(0xFF76e9ff),
      ),
      backgroundColor: const Color(0xFFdaffff),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/ibai.jpg', width: 100, height: 100,),
            Image.asset('assets/images/parkour.jpg', width: 100, height: 100,),
            Image.asset('assets/images/relax.jpg', width: 100, height: 100,),
          ],
        ),
      ),
    );
  }
}
