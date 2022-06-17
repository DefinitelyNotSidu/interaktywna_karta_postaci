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
      Padding(
        padding: EdgeInsets.all(5),
        child: Stats(stat: "Siła"),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Stats(stat: "Zręczność"),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Stats(stat: "Kondycja"),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Stats(stat: "Inteligencja"),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Stats(stat: "Mądrość"),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Stats(stat: "Charyzma"),
      ),
    ],
  );
}
