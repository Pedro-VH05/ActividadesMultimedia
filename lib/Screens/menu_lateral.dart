import 'package:actividad4/Screens/contador_clicks.dart';
import 'package:actividad4/Screens/fotos_piramides.dart';
import 'package:actividad4/Screens/instagram/main_instagram.dart';
import 'package:actividad4/Screens/juego_imagenes.dart';
import 'package:flutter/material.dart';
import 'package:actividad4/Screens/nombre_pantalla.dart';
import 'package:actividad4/Screens/fotos_pantalla.dart';
import 'package:actividad4/Screens/fotos_columna.dart';
import 'package:actividad4/Screens/iconos_pantalla.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFdaffff),
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
                height: 10,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Nombre y Apellidos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NombrePantalla()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Fotos en Fila'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FotosPantalla()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Fotos en Columna'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FotosColumna()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Iconos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IconosPantalla()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.functions_rounded),
            title: const Text('Pirámide'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PiramideScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.plus_one_rounded),
            title: const Text('Contador clicks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContadorScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.gamepad_outlined),
            title: const Text('Juego Imágenes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const JuegoImagenes()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_rounded),
            title: const Text('Instagram'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InstagramApp()),
              );
            },
          ),
          
        ],
      ),
    );
  }
}
