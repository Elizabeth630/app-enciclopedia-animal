import 'package:flutter/material.dart';
import '../models/animal.dart';

class AnimalItem extends StatelessWidget {
  final Animal animal;

  const AnimalItem({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(animal.nombre),
      trailing: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/detalle',
            arguments: animal,
          );
        },
        child: const Text('Ver más'),
      ),
    );
  }
}
