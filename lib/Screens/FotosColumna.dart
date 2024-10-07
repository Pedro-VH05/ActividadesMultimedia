import 'package:flutter/material.dart';

class FotosColumna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos en Columna'),
        backgroundColor: Color(0xFF76e9ff),
      ),
      backgroundColor: Color(0xFFdaffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset('assets/images/ibai.jpg', width: 200, height: 200,),
          ),
          Center(
            child: Image.asset('assets/images/parkour.jpg', width: 200, height: 200,),
          ),
          Center(
            child: Image.asset('assets/images/relax.jpg', width: 200, height: 200,),
          ),
        ],
      ),
    );
  }
}
