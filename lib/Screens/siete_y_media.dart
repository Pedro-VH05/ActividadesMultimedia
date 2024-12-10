import 'dart:async';
import 'dart:math';
import 'package:actividad4/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class SieteYMediaScreen extends StatefulWidget {
  const SieteYMediaScreen({super.key});

  @override
  _SieteYMediaScreenState createState() => _SieteYMediaScreenState();
}

class _SieteYMediaScreenState extends State<SieteYMediaScreen> {
  // Variables del juego
  final List<Map<String, dynamic>> _mazo = [];
  double _puntuacionUsuario = 0;
  double _puntuacionMaquina = 0;
  int _victoriasUsuario = 0;
  int _victoriasMaquina = 0;
  final List<double> _cartasUsuario = [];
  final List<double> _cartasMaquina = [];
  bool _juegoEnCurso = true;
  String _mensajeRonda = '';

  @override
  void initState() {
    super.initState();
    _generarMazo();
    _barajarMazo();
  }

  // Genera el mazo español sin 8 ni 9
  void _generarMazo() {
    _mazo.clear();
    const valores = [1, 2, 3, 4, 5, 6, 7, 10, 11, 12]; // 10, 11, 12 valen 0.5
    const palos = ['Oros', 'Copas', 'Espadas', 'Bastos'];
    for (var valor in valores) {
      for (var palo in palos) {
        _mazo.add({'valor': valor, 'palo': palo});
      }
    }
  }

  // Baraja el mazo
  void _barajarMazo() {
    _mazo.shuffle(Random());
  }

  // Roba una carta del mazo
  double _robarCarta() {
    if (_mazo.isEmpty) {
      _generarMazo();
      _barajarMazo();
    }
    final carta = _mazo.removeLast();
    final valor = carta['valor'];
    return (valor >= 10) ? 0.5 : valor.toDouble(); // Las figuras valen 0.5
  }

  // Lógica de la máquina
  Future<void> _juegaMaquina() async {
    _cartasMaquina.clear();
    _puntuacionMaquina = 0;
    while (_puntuacionMaquina < 5.5 && _puntuacionMaquina <= 7.5) {
      final carta = _robarCarta();
      setState(() {
        _cartasMaquina.add(carta);
        _puntuacionMaquina += carta;
      });
      await Future.delayed(const Duration(seconds: 1)); // Muestra la carta poco a poco
    }
    _evaluarGanador();
  }

  // Usuario roba carta
  void _robarUsuario() {
    setState(() {
      final carta = _robarCarta();
      _cartasUsuario.add(carta);
      _puntuacionUsuario += carta;

      if (_puntuacionUsuario > 7.5) {
        _mensajeRonda = 'Te has pasado. La máquina gana esta ronda.';
        _victoriasMaquina++;
        _reiniciarCartas(); // Reinicia las cartas
        _evaluarGanador();
      }
    });
  }

  // Usuario se planta
  void _plantarse() {
    setState(() {
      _juegoEnCurso = false;
    });
    _juegaMaquina();
  }

  // Evalúa el ganador de la partida
  void _evaluarGanador() {
    if (_puntuacionUsuario > 7.5) {
      _mensajeRonda = 'Te has pasado. La máquina gana esta ronda.';
      _victoriasMaquina++;
      _reiniciarCartas(); // Reinicia las cartas
    } else if (_puntuacionMaquina > 7.5 || _puntuacionUsuario > _puntuacionMaquina) {
      _mensajeRonda = '¡Tú ganas esta ronda!';
      _victoriasUsuario++;
      _reiniciarCartas(); // Reinicia las cartas
    } else if (_puntuacionUsuario < _puntuacionMaquina) {
      _mensajeRonda = 'La máquina gana esta ronda.';
      _victoriasMaquina++;
      _reiniciarCartas(); // Reinicia las cartas
    }

    // Si alguien llega a 5 victorias, reinicia las puntuaciones
    if (_victoriasUsuario == 5 || _victoriasMaquina == 5) {
      String ganador = _victoriasUsuario == 5 ? '¡Tú has ganado el juego!' : 'La máquina ha ganado el juego!';
      _mensajeRonda = '$ganador Las puntuaciones se reinician.';
      Future.delayed(const Duration(seconds: 2), _resetJuego); // Espera 2 segundos para reiniciar
    } else {
      setState(() {
        _juegoEnCurso = true;
      });
    }
  }

  // Reinicia el marcador completo (victorias de cada jugador)
  void _resetJuego() {
    setState(() {
      _victoriasUsuario = 0;
      _victoriasMaquina = 0;
      _mensajeRonda = ''; // Limpia el mensaje de la ronda
    });
  }

  // Reinicia las cartas de ambos jugadores
  void _reiniciarCartas() {
    setState(() {
      _cartasUsuario.clear();
      _cartasMaquina.clear();
      _puntuacionUsuario = 0;
      _puntuacionMaquina = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Siete y Media'),
        centerTitle: true,
      ),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Marcador:\nTú: $_victoriasUsuario | Máquina: $_victoriasMaquina',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              _mensajeRonda,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text('Tus cartas:', style: TextStyle(fontSize: 16)),
                      Text(
                        _cartasUsuario.join('  '),
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Puntuación: ${_puntuacionUsuario.toStringAsFixed(1)}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Cartas de la máquina:', style: TextStyle(fontSize: 16)),
                      Text(
                        _cartasMaquina.join('  '),
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Puntuación: ${_puntuacionMaquina.toStringAsFixed(1)}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _juegoEnCurso ? _robarUsuario : null,
                  child: const Text('Robar Carta'),
                ),
                ElevatedButton(
                  onPressed: _juegoEnCurso ? _plantarse : null,
                  child: const Text('Plantarse'),
                ),
                ElevatedButton(
                  onPressed: _resetJuego, // Reinicia las victorias del marcador
                  child: const Text('Reiniciar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
