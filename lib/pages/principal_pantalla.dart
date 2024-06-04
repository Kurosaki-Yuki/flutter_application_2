import 'package:flutter/material.dart';
import 'juegos_pantalla.dart';
import 'rutina_pantalla.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _Test();
}

/*class MenuEntry {
  const MenuEntry(
      {required this.label, this.shortcut, this.onPressed, this.menuChildren})
      : assert(menuChildren == null || onPressed == null,
            'onPressed is ignored if menuChildren are provided');
  final String label;

  final MenuSerializableShortcut? shortcut;
  final VoidCallback? onPressed;
  final List<MenuEntry>? menuChildren;

  static List<Widget> build(List<MenuEntry> selections) {
    Widget buildSelection(MenuEntry selection) {
      if (selection.menuChildren != null) {
        return SubmenuButton(
          menuChildren: MenuEntry.build(selection.menuChildren!),
          child: Text(selection.label),
        );
      }
      return MenuItemButton(
        shortcut: selection.shortcut,
        onPressed: selection.onPressed,
        child: Text(selection.label),
      );
    }

    return selections.map<Widget>(buildSelection).toList();
  }
  static Map<MenuSerializableShortcut, Intent> shortcuts(
      List<MenuEntry> selections) {
    final Map<MenuSerializableShortcut, Intent> result =
        <MenuSerializableShortcut, Intent>{};
    for (final MenuEntry selection in selections) {
      if (selection.menuChildren != null) {
        result.addAll(MenuEntry.shortcuts(selection.menuChildren!));
      } else {
        if (selection.shortcut != null && selection.onPressed != null) {
          result[selection.shortcut!] =
              VoidCallbackIntent(selection.onPressed!);
        }
      }
    }
    return result;
  }
}*/

class _Test extends State<Test>{

  void newScreen() {
    Navigator.pop(context);
  }

  void gameScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Game()));
  }

  void rutineScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Rutine()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Bienvenido Username'),
      ),
      persistentFooterButtons: [
        Expanded(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //TextButton(onPressed: newScreen, child: const Text('volver')),
            TextButton(onPressed: gameScreen, child: const Text('Juegos')),
            TextButton(onPressed: rutineScreen, child: const Text('Rutinas')),
          ]

        )
        )
        
      ],
      body: const Center(
        //child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Bienvenido de vuelta invocador',
                  style: TextStyle(height: 5, fontSize: 25),),
                
                ],
              )
              //MenuBar(children: MenuEntry.build(_getMenus))
            ],
          ),
        //),
      )
        
    );
  }

}