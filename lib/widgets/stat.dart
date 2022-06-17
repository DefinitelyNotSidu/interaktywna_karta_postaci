import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double size = 30.0;
double width = 80.0;
double height = 94.0;

class Stats extends StatefulWidget {
  final String stat;
  const Stats({Key? key, required this.stat}) : super(key: key);
  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  int statValue = 0;
  int modifier = 0;
  int setModifier() {
    if (statValue.isEven) {
      return (statValue - 10) ~/ 2;
    } else {
      return (statValue - 11) ~/ 2;
    }
  }

  String getModifierString() {
    if (modifier < 0) {
      return '$modifier';
    } else {
      return '+$modifier';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Form(
            child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //name
                      Text(widget.stat),

                      const Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                      //value
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,
                        initialValue: '0',
                        onFieldSubmitted: (String? value) {
                          statValue = int.parse(value!);

                          setState(() {
                            modifier = setModifier();
                          });
                        },
                      ),
                      //modifier
                      Text(getModifierString())
                    ],
                  ),
                ))));
  }
}
