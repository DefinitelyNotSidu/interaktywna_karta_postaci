import 'package:flutter/material.dart';
import 'pages/kp1.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Interaktywna Karta Postaci D&D 5e',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/kp1': (context) => const Kp1(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get child => Kp1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MENU'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/kp1');
              },
              child: const Text("Stwórz nową postać"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Wczytaj zapisaną postać"),
            ),
          ],
        ),
      ),
    );
  }
}
