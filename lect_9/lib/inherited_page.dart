import 'package:flutter/material.dart';
import 'package:lect_9/util.dart';
import 'app_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appData = AppDataProvider.of(context)?.appData;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 249, 55, 194),
        title: const Text('Главная страница'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 450,
          color: appData?.backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildColorText(appData),
              _buildChangeColorButton(appData),
              _buildNavigateButton(),
            ],
          ),
        ),
      ),
    );
  }

  // Метод для отображения текущего цвета
  Widget _buildColorText(AppData? appData) {
    return Text(
      appData?.backgroundColor.toString() ?? '',
      textAlign: TextAlign.center,
    );
  }

  // Метод для кнопки изменения цвета
  Widget _buildChangeColorButton(AppData? appData) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          appData?.changeBackgroundColor(Util.randomColor());
        });
      },
      child: const Text('Изменить цвет'),
    );
  }

  // Метод для кнопки навигации
  Widget _buildNavigateButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
        );
      },
      child: const Text('Перейти на вторую страницу'),
    );
  }
}

// Вторая страница
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appData = AppDataProvider.of(context)?.appData;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 151, 226),
        title: const Text('Вторая страница'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 550,
          color: appData?.backgroundColor,
          child: Center(
            child: Text(
              'Текущий цвет: ${appData?.backgroundColor.toString() ?? ''}',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
