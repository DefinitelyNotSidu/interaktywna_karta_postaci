import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double size = 30.0;

class Strength extends StatefulWidget {
  const Strength({Key? key}) : super(key: key);

  @override
  State<Strength> createState() => _StrengthState();
}

class _StrengthState extends State<Strength> {
  String statType = 'Siła';
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

  //text controller
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          //value
          TextField(
            controller: myController,
            decoration: InputDecoration(labelText: statType),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            onSubmitted: (text) {
              value = int.parse(text);
              setModifier();
            },
          ),
          //TODO: update modifier on value change
          //modifier
          Text(getModifier().toString())
        ],
      ),
    );
  }
}


//