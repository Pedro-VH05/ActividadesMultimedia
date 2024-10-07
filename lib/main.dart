import 'package:actividad1/Screens/NombrePantalla.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/Screens/RepoPantalla.dart';
import 'package:actividad1/Screens/FotosPantalla.dart';
import 'package:actividad1/Screens/FotosColumna.dart';
import 'package:actividad1/Screens/IconosPantalla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navegable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Navegable'),
        backgroundColor: Color(0xFF76e9ff),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFdaffff),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF76e9ff),
              ),
              child: Text(
                'Menú de Navegación',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  height: 1,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Nombre y Apellidos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NombrePantalla()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Repositorio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RepoPantalla()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Fotos en Fila'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FotosPantalla()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Fotos en Columna'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FotosColumna()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Iconos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconosPantalla()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFdaffff),
      body: const Center(
        child: Text(
          'Selecciona una opción del menú.',
        ),
      ),
    );
  }
}
