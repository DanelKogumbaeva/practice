## Работа с кроссплатформенным фреймворком Flutter
### 1. Начало работы с Flutter
С помощью Visual Code установила плагин для работы с Flutter и создала первый проект с дефолтным приложением, после чего протестировал его работу в iOS приложении и эмуляторе iPhone.

### 2. Использование собственных виджетов
В файле `main.dart` создала в нем свои виджеты и использовала их в главной функции:

```import 'package:flutter/material.dart';

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
}
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
```

> Для добавления фотографий создала папку "assets", а в файле pubspec.yaml прописала дирректории:

 ``` uses-material-design: true
  assets:
  - assets/
```
Скриншоты работы программы:
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/fa941e26-65b2-48a7-9285-6652e3a0f664">
	</p>
 <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/8e16346f-0429-4d17-aa8a-7387efc0d185">
	</p>
 <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/a0942e2f-8aad-4e79-8cdf-6922dae83991">
	</p>
    
> Для добавления шрифтов создалв папку "fonts", а в файле pubspec.yaml прописалв дирректории:

```
fonts:
    - family: Apple Chancery
      fonts:
        - asset: fonts/Apple Chancery.ttf
```

## Ключи
 <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/77becf75-da1b-4c92-90f2-efb0a0c49e82">
	</p>
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/b671f41d-13e4-443f-9a04-528b13072608">
	</p>
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/4baf949c-db0b-4b73-97a2-2defe241f29f">
	</p>

## Создание ListView
 <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/27e360d7-68c2-48ac-86e8-2cf43b09282d">
	</p>
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/36f08ba0-e48a-4614-81d6-85b5449b2105">
	  
	</p>





## Взаимодействие с пользователем. Создание опроса.

 <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/881dba5b-087c-4eee-beef-c6f992cbdb46">
	</p>
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/3334e173-930b-452c-a9c6-61560fbb61ac">
	</p>
 <p align="center">
	  <img width="250" height="100" src="https://github.com/user-attachments/assets/a4426a37-6ad7-4fb4-8a37-a6be09ad6b76">
	</p>


## Управление состоянием
 <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/31e4e3ca-a3db-4f4d-b972-7c1d05ec60b5">
	</p>
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/27d6c1f3-aa20-436a-8022-56f065c2ca20">
	</p>


  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/7a3ddc5d-61b3-48c4-8cbb-9d283c56a483">
	</p>
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/47a3e8d6-6686-49d5-9f3c-627bd5e40b2a">
	</p>
 
## BLoC
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/ff583fb9-cdc1-4522-806e-1f407cc5ff21">
	</p>
  <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/2caf16b5-c9ac-4a3c-aba2-4ec218ede5be">
	</p>
   <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/95702237-85b7-45f7-b31b-c86358f27b42">
	</p>
   <p align="center">
	  <img width="250" height="490" src="https://github.com/user-attachments/assets/ec57f5e4-d951-4992-bb1a-410c88a6d5d4">
	</p>

## Основы тестирования
![image](https://github.com/user-attachments/assets/f5a170e4-d913-4ea1-9236-f902f3143e63)














