import 'package:actividad4/routes/app_routes.dart';
import 'package:actividad4/screens/home_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navegable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Colores
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF76e9ff),
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFFdaffff),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color(0xFFdaffff),
        ),
        // Estilos de texto
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // Estilo para los ListTile en el Drawer
        listTileTheme: const ListTileThemeData(
          tileColor: Color(0xFFdaffff),
          selectedTileColor: Color(0xFF76e9ff),
          textColor: Colors.black,
          iconColor: Colors.black,
        ),
        // Botones
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF76e9ff),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      initialRoute: '/',
      routes: AppRoutes.routes, 
      home: const HomeScreens(),
    );
  }
}
