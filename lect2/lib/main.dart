import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Обзор на моих домашних животных', style: TextStyle(fontSize: 15)),
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.add))],
        ),
        body: 
          const ColorContainer(color: Colors.transparent,),

        floatingActionButton: 
          IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
      )
      
    )
  );
}

class ColorContainer extends StatefulWidget{
   const ColorContainer ({super.key, required this.color});
  
   final Color color;

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {

  late Color color;

@override
  void initState(){
    super.initState();
    color = widget.color;
  }
  String imagePath = 'assets/rats.jpg'; // путь по умолчанию
  double textsize=25;

  @override
  Widget build(BuildContext context){

    return GestureDetector(
      onTap : (){
       
        setState(() {
        color = Colors.green;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 500, width: 500), // отображаем изображение
          Container(
            color: color,
            child: Center(
              child: Text(
                    'Rats',
                    style: TextStyle(
                      fontFamily: 'Apple Chancery', 
                      fontSize: textsize,
                    ),
                  ),

              ),
                
          
          ),
          ElevatedButton(onPressed:(){
            setState(() {
                imagePath = 'assets/rats.jpg';
            });
          }, child: Text('Общее фото')),
         
          ElevatedButton(onPressed:(){
            setState(() {
              imagePath = 'assets/anf.jpeg';
            });

          }, child: Text('Анфиса')),
          
          ElevatedButton(onPressed:(){
            setState(() {
              imagePath = 'assets/lar.jpeg'; // изменяем изображение
            });

          }, child: Text('Лариса')),

        ],
      )
    );

  }
}

