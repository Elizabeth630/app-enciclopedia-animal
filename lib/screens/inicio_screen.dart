import 'package:flutter/material.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enciclopedia de Animales'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lista');
              },
              child: const Text('Ir a lista de animales'),
            ),
          ],
        ),
      ),
    );
  }
}
