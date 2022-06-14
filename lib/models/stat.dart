import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double size = 30.0;

//
class StatValues {
  String statType = "Siła";
  int value = 0;
  int _modifier = 0;

  void setModifier() {
    if (value.isEven) {
      _modifier = (value - 10) ~/ 2;
    } else {
      _modifier = (value - 11) ~/ 2;
    }
  }

  int getModifier() {
    return _modifier;
  }
}

StatValues str = StatValues();

class Strength extends StatefulWidget {
  const Strength({Key? key}) : super(key: key);

  @override
  State<Strength> createState() => _StrengthState();
}

class _StrengthState extends State<Strength> {
  /*String statType = 'Siła';
  int value = 0;
  int _modifier = 0;
  void setModifier() {
    if (value.isEven) {
      _modifier = (value - 10) ~/ 2;
    } else {
      _modifier = (value - 11) ~/ 2;
    }
  }

  int getModifier() {
    return _modifier;
  }*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          //value
          TextField(
            decoration: InputDecoration(labelText: str.statType),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            onSubmitted: (text) {
              str.value = int.parse(text);
              str.setModifier();
            },
          ),
          //TODO: update modifier on value change
          Modifier()
        ],
      ),
    );
  }
}

//modifier handler

class Modifier extends StatefulWidget {
  const Modifier({Key? key}) : super(key: key);

  @override
  State<Modifier> createState() => _ModifierState();
}

class _ModifierState extends State<Modifier> {
  @override
  Widget build(BuildContext context) {
    return Text(str.getModifier().toString());
  }
}
