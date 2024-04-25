import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetName = 'assets/icons/devrant_icon.svg';
const String smileyName = 'assets/icons/smiley_icon.svg';
const String sadName = 'assets/icons/sad_face_icon.svg';
Widget svg = SvgPicture.asset(
  assetName,
  semanticsLabel: 'newIcon'
);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _victory = '';

  void _incrementCounter() {
    setState(() {
      _counter++;

      _check();
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter > 0){
        _counter--;
      }

      _check();
    });
  }

  void _restartCounter() {
    setState(() {
      _counter = 0;

      _check();
    });
  }

  void _check(){
    if(_counter == 15){
      _victory = 'Victoria';
      svg = SvgPicture.asset(smileyName);
    }else if(_counter == 10){
      _victory = 'Derrota';
      svg = SvgPicture.asset(sadName);
    }else if(_counter < 10){
      _victory = '';
      svg = SvgPicture.asset(assetName);
    }
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
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  svg,
                  svg,
                  svg,
                ]
              ),
              Text(
                '$_counter veces',
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                _victory,
                style: const TextStyle(fontSize: 30),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  TextButton(onPressed: _incrementCounter, child: Icon(Icons.add)),
                  TextButton(onPressed: _decrementCounter, child: Icon(Icons.remove)),
                  TextButton(onPressed: _restartCounter, child: Icon(Icons.restart_alt))
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
