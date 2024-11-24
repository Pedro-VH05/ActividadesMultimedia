import 'package:flutter/material.dart';

class PhotosGrid extends StatefulWidget {
  const PhotosGrid({super.key});

  @override
  _PhotosGridState createState() => _PhotosGridState();
}

class _PhotosGridState extends State<PhotosGrid> {
  int _currentPage = 0; // Página actual (0: fotos normales, 1: etiquetadas)
  final PageController _pageController = PageController(); // Controlador de la página

  // Conjuntos de imágenes
  final List<List<String>> _photoSets = [
    List.generate(9, (index) => 'assets/images/photo$index.jpeg'), // Fotos normales
    List.generate(9, (index) => 'assets/images/tagged_photo$index.jpg'), // Fotos etiquetadas
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Fila de iconos (para cambiar entre vistas)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.grid_on, size: 24),
                onPressed: () {
                  setState(() {
                    _currentPage = 0; // Cambiar a fotos normales
                  });
                  _pageController.jumpToPage(0); // Cambiar a la página 0
                },
                color: _currentPage == 0 ? Colors.blue : Colors.black,
              ),
              IconButton(
                icon: const Icon(Icons.assignment_ind_outlined, size: 24),
                onPressed: () {
                  setState(() {
                    _currentPage = 1; // Cambiar a fotos etiquetadas
                  });
                  _pageController.jumpToPage(1); // Cambiar a la página 1
                },
                color: _currentPage == 1 ? Colors.blue : Colors.black,
              ),
            ],
          ),
        ),
        const SizedBox(height: 9),
        // Animación con PageView
        SizedBox(
          height: 395, // Altura de la cuadrícula
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: _photoSets.length,
            itemBuilder: (context, index) {
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: _photoSets[index].length,
                itemBuilder: (context, photoIndex) {
                  return Image.asset(
                    _photoSets[index][photoIndex],
                    fit: BoxFit.cover,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}