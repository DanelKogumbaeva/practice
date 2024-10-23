import 'package:flutter/material.dart';

// Класс для хранения данных приложения, например, цвета фона
class AppData {
  Color backgroundColor;

  AppData({required this.backgroundColor});

  // Метод для изменения цвета фона
  void changeBackgroundColor(Color newColor) {
    backgroundColor = newColor;
  }
}

// Виджет для предоставления данных приложения через наследование
class AppDataProvider extends InheritedWidget {
  const AppDataProvider({
    required this.appData,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

  final AppData appData;

  // Метод для доступа к экземпляру AppDataProvider из дочерних виджетов
  static AppDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppDataProvider>();
  }

  // Уведомление фреймворка о необходимости обновления виджетов при изменении данных
  @override
  bool updateShouldNotify(AppDataProvider oldWidget) {
    return oldWidget.appData.backgroundColor != appData.backgroundColor;
  }
}
