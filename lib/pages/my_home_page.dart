import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'test.dart';

const String assetName = 'assets/icons/devrant_icon.svg';
const String smileyName = 'assets/icons/smiley_icon.svg';
const String sadName = 'assets/icons/cry_face_icon.svg';
Widget svg = SvgPicture.asset(
  assetName,
  height: 35, width: 35,
);

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
    MaterialPageRoute(builder: (context) => const test()),
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
              /*const Text( 
                'Nombre de usuario:'
              ),*/
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nombre de usuario',
                ),
              ),
              /*const Text( 
                'Contraseña:'
              ),*/
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
