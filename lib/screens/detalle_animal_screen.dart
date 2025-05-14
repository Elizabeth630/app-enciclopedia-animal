import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/animal.dart';

class DetalleAnimalScreen extends StatefulWidget {
  const DetalleAnimalScreen({super.key});

  @override
  State<DetalleAnimalScreen> createState() => _DetalleAnimalScreenState();
}

class _DetalleAnimalScreenState extends State<DetalleAnimalScreen> {
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final Animal animal = ModalRoute.of(context)!.settings.arguments as Animal;

    return Scaffold(
      appBar: AppBar(
        title: Text(animal.nombre),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagen que se adapta sin recortarse
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                animal.imagen,
                width: double.infinity,
                fit: BoxFit.fitWidth, // 🔄 Evita recortes
              ),
            ),

            const SizedBox(height: 16),

            // Nombre del animal
            Center(
              child: Text(
                animal.nombre,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Descripción del animal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                animal.descripcion,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),

            const SizedBox(height: 16),

            // Botón para reproducir sonido
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await player.play(AssetSource(animal.sonido));
                },
                child: const Text('Reproducir sonido'),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
