import 'package:actividad4/routes/app_routes.dart';
import 'package:flutter/material.dart';

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
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.nombre);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Fotos en Fila'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.pantalla);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Fotos en Columna'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.columna);
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Iconos'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.iconos);
            },
          ),
          ListTile(
            leading: const Icon(Icons.functions_rounded),
            title: const Text('Pirámide'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.piramides);
            },
          ),
          ListTile(
            leading: const Icon(Icons.plus_one_rounded),
            title: const Text('Contador clicks'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.clicks);
            },
          ),
          ListTile(
            leading: const Icon(Icons.gamepad_outlined),
            title: const Text('Juego Imágenes'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.juego);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_rounded),
            title: const Text('Instagram'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.instagram);
            },
          ),
          
        ],
      ),
    );
  }
}
