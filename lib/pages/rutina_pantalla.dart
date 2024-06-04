import 'dart:ffi';

import 'package:flutter/material.dart';


class Rutine extends StatefulWidget {
  const Rutine({super.key});

  @override
  State<Rutine> createState() => _Rutine();
}

class _Rutine extends State<Rutine>{

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Rutinas'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Void,
        child: const Icon(Icons.add),
      ),
    );
  }
}