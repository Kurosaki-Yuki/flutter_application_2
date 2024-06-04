import 'dart:ffi';

import 'package:flutter/material.dart';


class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _Game();
}

class _Game extends State<Game>{

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Juegos'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Void,
        child: const Icon(Icons.add),
      ),
    );
  }
}