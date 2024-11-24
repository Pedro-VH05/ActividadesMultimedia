import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Imagen de perfil
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/foto_pedro.jpg'),
              ),
              SizedBox(width: 16),
              // Estadísticas
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _StatisticWidget(count: '2', label: 'Publicaciones'),
                    _StatisticWidget(count: '415', label: 'Seguidores'),
                    _StatisticWidget(count: '673', label: 'Seguidos'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16, width: 10),
          // Nombre y frase
          Text(
            'Pedro Vigara',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4, width: 5),
          Text(
            '"Yo sí se lo que me deparará el futuro."',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class _StatisticWidget extends StatelessWidget {
  final String count;
  final String label;

  const _StatisticWidget({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4, width: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
