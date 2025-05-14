import 'package:app_enciclopedia_animales/screens/detalle_animal_screen.dart';
import 'package:app_enciclopedia_animales/screens/inicio_screen.dart';
import 'package:app_enciclopedia_animales/screens/lista_animales_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enciclopedia de Animales',
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioScreen(),
        '/lista': (context) => const ListaAnimalesScreen(),
        '/detalle': (context) => const DetalleAnimalScreen(),
      },
    );
  }
}
