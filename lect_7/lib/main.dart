import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OfficeSurveyApp(),
  ));
}

class OfficeSurveyApp extends StatefulWidget {
  @override
  _OfficeSurveyAppState createState() => _OfficeSurveyAppState();
}

class _OfficeSurveyAppState extends State<OfficeSurveyApp> {
  final _formKey = GlobalKey<FormState>();
  final question1Controller = TextEditingController();
  final question2Controller = TextEditingController();
  final question3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 118, 60),
        title: Text('Уровень удовлетворенности услуг'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: question1Controller,
                decoration: InputDecoration(labelText: 'Оцените качество услуг от 0 до 10'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите ответ';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: question2Controller,
                decoration: InputDecoration(labelText: 'Оцените профессионализм  персонала '),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите ответ';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: question3Controller,
                decoration: InputDecoration(labelText: 'Какова вероятность того, что вы порекомендуете нашу компанию друзьям и знакомым'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите ответ';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _submitForm();
                    }
                  },
                  child: Text('Отправить Ответы'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Ваши ответы успешно отправлены! Спасибо за участие в опросе!'),
      ),
    );
    question1Controller.clear();
    question2Controller.clear();
    question3Controller.clear();
  }
}