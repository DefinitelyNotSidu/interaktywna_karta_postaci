import 'package:flutter/material.dart';
import 'package:interaktywna_karta_postaci/models/stat.dart';

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
        body: Strength());
  }
}
//body
/*
Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ListView(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration:
                            const BoxDecoration(color: Colors.greenAccent),
                        child: const Text('chuj'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Text('chuj'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: const Text('chuj'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: const Text('chuj'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
 */