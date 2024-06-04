import 'package:flutter/material.dart';
import 'principal_pantalla.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = "Inicia sesión";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  void newScreen() {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Test()),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child:Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nombre de usuario',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
              Row(  
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  TextButton(onPressed: newScreen, child: const Text('test'))
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
