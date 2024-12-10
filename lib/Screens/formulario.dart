import 'package:flutter/material.dart';
import 'dart:math'; // Importar para generar números aleatorios
import 'package:actividad4/screens/menu_lateral.dart';

class FormularioAdivinanzaScreen extends StatefulWidget {
  const FormularioAdivinanzaScreen({super.key});

  @override
  _FormularioAdivinanzaScreenState createState() =>
      _FormularioAdivinanzaScreenState();
}

class _FormularioAdivinanzaScreenState extends State<FormularioAdivinanzaScreen> {
  // Controladores y variables para el formulario general
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  String? _selectedValue = 'Opción 1';
  bool _isChecked = false;

  // Variables para la adivinanza de número
  final _controller = TextEditingController();
  String _message = 'Adivina el número entre 1 y 100';
  late int _targetNumber; // Ahora es late porque se genera aleatoriamente
  bool _isNumberCorrect = false;

  // Inicialización de la adivinanza de número con un número aleatorio
  void _initializeTargetNumber() {
    final random = Random();
    _targetNumber = random.nextInt(100) + 1; // Generar un número entre 1 y 100
  }

  @override
  void initState() {
    super.initState();
    _initializeTargetNumber(); // Inicializar el número aleatorio al cargar la pantalla
  }

  // Para la validación de la fecha
  void _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (selectedDate != null) {
      setState(() {
        _dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  // Función para comprobar si el número adivinado es correcto
  void _checkGuess() {
    final guessedNumber = int.tryParse(_controller.text);
    if (guessedNumber == null) {
      setState(() {
        _message = 'Por favor, ingresa un número válido';
      });
    } else if (guessedNumber < _targetNumber) {
      setState(() {
        _message = 'El número es mayor. Intenta nuevamente';
      });
    } else if (guessedNumber > _targetNumber) {
      setState(() {
        _message = 'El número es menor. Intenta nuevamente';
      });
    } else {
      setState(() {
        _message = '¡Felicidades! Has adivinado el número';
        _isNumberCorrect = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulario con Adivinanza')),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Formulario con validación
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Formulario de Registro',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  // Campo Nombre
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Nombre'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa tu nombre';
                      }
                      return null;
                    },
                  ),
                  // Campo Email
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa tu email';
                      }
                      if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'Por favor, ingresa un email válido';
                      }
                      return null;
                    },
                  ),
                  // Campo Fecha
                  TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                        labelText: 'Fecha de Nacimiento',
                        suffixIcon: IconButton(
                            icon: const Icon(Icons.calendar_today),
                            onPressed: () => _selectDate(context))),
                    readOnly: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, selecciona tu fecha de nacimiento';
                      }
                      return null;
                    },
                  ),
                  // Menú desplegable
                  DropdownButtonFormField<String>(
                    value: _selectedValue,
                    decoration: const InputDecoration(labelText: 'Seleccione una opción'),
                    items: ['Opción 1', 'Opción 2', 'Opción 3']
                        .map((option) => DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, selecciona una opción';
                      }
                      return null;
                    },
                  ),
                  // Checkbox
                  CheckboxListTile(
                    title: const Text('Aceptar términos y condiciones'),
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  // Botón de Enviar
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Formulario Enviado')));
                      }
                    },
                    child: const Text('Enviar'),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            // Adivinanza de número
            const Text(
              'Adivinanza de Número',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              _message,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Introduce tu número',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isNumberCorrect ? null : _checkGuess,
              child: const Text('Verificar'),
            ),
          ],
        ),
      ),
    );
  }
}
