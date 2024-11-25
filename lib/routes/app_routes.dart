import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  // Definir nombres para las rutas
  static const String clicks = '/clicks';
  static const String columna = '/columna';
  static const String pantalla = '/pantalla';
  static const String desafio = '/desafio';
  static const String piramides = '/piramides';
  static const String iconos = '/iconos';
  static const String juego = '/juego';
  static const String nombre = '/nombre';
  static const String instagram = '/instagram';
  static const String menu = '/menu';

  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    clicks: (context) => const ContadorScreen(),
    columna: (context) => const FotosColumna(),
    pantalla: (context) => const FotosPantalla(),
    desafio: (context) => const DesafioPantalla(),
    piramides: (context) => const PiramideScreen(),
    iconos: (context) => const IconosPantalla(),
    juego: (context) => const JuegoImagenes(),
    nombre: (context) => const NombrePantalla(),
    instagram: (context) => const InstagramApp(),
    menu: (context) => const MenuLateral(),
  };
}
