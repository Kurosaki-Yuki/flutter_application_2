import 'package:flutter/material.dart';



class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _test();
}

class _test extends State<test>{

  void newScreen() {
    Navigator.pop(context);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Row(
                children: [
                  Text(
                    'Bienvenido de vuelta invocador'
                  ),
                ]
              ),
              TextButton(onPressed: newScreen, child: const Text('volver'))
            ],
          ),
        ),
      )
        
    );
  }

}