import 'package:flutter/material.dart';
import 'test.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
      persistentFooterButtons: const [
        /*Visibility(
          maintainSize: true, 
          maintainAnimation: true,
          maintainState: true,
          visible: false, 
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          )
        ),
        Visibility(
          maintainSize: true, 
          maintainAnimation: true,
          maintainState: true,
          visible: false, 
          child: ElevatedButton(
            onPressed: _decrementCounter,
            child: const Icon(Icons.remove),
          )
        )*/
        ],
      body: Center(
        child:Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(  
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Expanded(child: 
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Nombre de usuario',
                      ),
                    ),
                  ),                 
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
