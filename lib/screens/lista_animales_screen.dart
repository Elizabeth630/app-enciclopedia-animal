import 'package:app_enciclopedia_animales/data/animal_data.dart';
import 'package:app_enciclopedia_animales/widgets/animal_item.dart';
import 'package:flutter/material.dart';


class ListaAnimalesScreen extends StatefulWidget {
  const ListaAnimalesScreen({super.key});

  @override
  State<ListaAnimalesScreen> createState() => _ListaAnimalesScreenState();
}

class _ListaAnimalesScreenState extends State<ListaAnimalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Animales')),
      body: ListView.builder(
        itemCount: animales.length,
        itemBuilder: (context, index) {
          return AnimalItem(animal: animales[index]);
        },
      ),
    );
  }
}
