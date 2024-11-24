import 'package:flutter/material.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 12),
          _StoryWidget(imagePath: 'assets/images/voleibol.jpeg', label: '🏐'),
          SizedBox(width: 16),
          _StoryWidget(imagePath: 'assets/images/amigos.jpeg', label: '😍'),
          SizedBox(width: 16),
          _StoryWidget(imagePath: 'assets/images/videojuegos.jpg', label: '🎮'),
          SizedBox(width: 16),
          _StoryWidget(imagePath: 'assets/images/programacion.jpg', label: '⌨️'),
          SizedBox(width: 16),
          _StoryWidget(imagePath: 'assets/images/balatro.jpg', label: '🃏'),
          SizedBox(width: 16),
          _StoryWidget(imagePath: 'assets/images/story3.jpg', label: ''),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}

class _StoryWidget extends StatelessWidget {
  final String imagePath;
  final String label;

  const _StoryWidget({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 8, width: 10),
        Text(label),
      ],
    );
  }
}
