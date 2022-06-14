import 'package:flutter/material.dart';
import 'package:interaktywna_karta_postaci/widgets/stat.dart';

class Kp1 extends StatefulWidget {
  const Kp1({Key? key}) : super(key: key);

  @override
  State<Kp1> createState() => _Kp1State();
}

class _Kp1State extends State<Kp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Statystyki postaci"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Więcej informacji'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Spelle'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Zapisz'),
            )
          ],
        ),
        // ignore: prefer_const_constructors
        body: bodyBuilder());
  }
}

bodyBuilder() {
  return Column(
    children: const [
      Padding(padding: EdgeInsets.all(5), child: Strength()),
      Padding(
        padding: EdgeInsets.all(5),
        child: Dexterity(),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Constitution(),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Intelligence(),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Wisdom(),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Charisma(),
      ),
    ],
  );
}
