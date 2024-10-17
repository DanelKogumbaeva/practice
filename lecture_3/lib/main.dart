import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
 State<HomePage>createState()=>_HomePageTileState();

}

class _HomePageTileState extends State<HomePage> {
  late List<StatefullColorTile> tiles;

  @override
  void initState(){
    super.initState();
    tiles= <StatefullColorTile>[
       StatefullColorTile(id: 1, key: UniqueKey(),),
       StatefullColorTile(id:2, key: UniqueKey(),),
       StatefullColorTile(id:3, key: UniqueKey(),),
       StatefullColorTile(id:4, key: UniqueKey(),)
    ];
    
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tiles,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: swapTiles,
        child: const Icon(Icons.switch_access_shortcut),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
    void swapTiles(){
      setState((){
        tiles.add(tiles.removeAt(0));
    });
    print('----');
    for (var item in tiles){
      print(item.id);
    }
  }
}

class StatefullColorTile extends StatefulWidget{
  const StatefullColorTile({
    super.key,
    required this.id
  });
  final int id;
  @override
 State<StatefullColorTile> createState ()=> _StatefullColorTileState();

}

class _StatefullColorTileState extends State<StatefullColorTile> {
  late Color color;
  @override
  void initState(){
    super.initState();
    color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
 Widget build (BuildContext context){
  return Container(width: 90, height: 90, color: color,);
 }
}

