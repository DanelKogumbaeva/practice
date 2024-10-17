## Работа с кроссплатформенным фреймворком Flutter
### 1. Начало работы с Flutter
С помощью Visual Code установила плагин для работы с Flutter и создала первый проект с дефолтным приложением, после чего протестировал его работу в iOS приложении и эмуляторе iPhone.
### 2. Использование собственных виджетов
В файле `main.dart` создала в нем свои виджеты и использовала их в главной функции:
``import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Обзор на моих домашних животных', style: TextStyle(fontSize: 20)),
        ),
        body: 
          const ColorContainer(color: Colors.transparent,),
      )
      
    )
  );
}`
class ColorContainer extends StatefulWidget{
   const ColorContainer ({super.key, required this.color});
  
   final Color color;

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
@override
  void initState(){
    super.initState();
    
  }
  String imagePath = 'assets/rats.jpg'; // путь по умолчанию
  double textsize=25;

  @override
  Widget build(BuildContext context){

    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 500, width: 500), // отображаем изображение
          Container(
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
`

> Для добавления фотографий создала папку "assets", а в файле pubspec.yaml прописала дирректории:
 ` uses-material-design: true
  assets:
  - assets/`
Скриншоты работы программы:
    ![image](https://github.com/user-attachments/assets/fa941e26-65b2-48a7-9285-6652e3a0f664)
    ![image](https://github.com/user-attachments/assets/8e16346f-0429-4d17-aa8a-7387efc0d185)
    ![image](https://github.com/user-attachments/assets/a0942e2f-8aad-4e79-8cdf-6922dae83991)

> Для добавления шрифтов создалв папку "fonts", а в файле pubspec.yaml прописалв дирректории:
`fonts:
    - family: Apple Chancery
      fonts:
        - asset: fonts/Apple Chancery.ttf`








