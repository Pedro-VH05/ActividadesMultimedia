import 'package:flutter/material.dart';

class FotosPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos en Fila'),
        backgroundColor: Color(0xFF76e9ff),
      ),
      backgroundColor: Color(0xFFdaffff),
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
