import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double size = 30.0;
double width = 80.0;
double height = 94.0;

class Strength extends StatefulWidget {
  const Strength({Key? key}) : super(key: key);

  @override
  State<Strength> createState() => _StrengthState();
}

class _StrengthState extends State<Strength> {
  static const String statType = 'Siła';
  int value = 0;
  int modifier = 0;
  int setModifier() {
    if (value.isEven) {
      return (value - 10) ~/ 2;
    } else {
      return (value - 11) ~/ 2;
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
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, width: 2, style: BorderStyle.solid)),
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                const Text(statType),
                //value
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  onSubmitted: (text) {
                    value = int.parse(text);
                    setState(() {
                      modifier = setModifier();
                    });
                  },
                ),
                //Modifier
                Text(getModifierString())
              ],
            ),
          ),
        ));
  }
}

class Dexterity extends StatefulWidget {
  const Dexterity({Key? key}) : super(key: key);

  @override
  State<Dexterity> createState() => _DexterityState();
}

class _DexterityState extends State<Dexterity> {
  static const String statType = 'Zręczność';
  int value = 0;
  int modifier = 0;
  int setModifier() {
    if (value.isEven) {
      return (value - 10) ~/ 2;
    } else {
      return (value - 11) ~/ 2;
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
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, width: 2, style: BorderStyle.solid)),
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                const Text(statType),
                //value
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  onSubmitted: (text) {
                    value = int.parse(text);
                    setState(() {
                      modifier = setModifier();
                    });
                  },
                ),
                //Modifier
                Text(getModifierString())
              ],
            ),
          ),
        ));
  }
}

class Constitution extends StatefulWidget {
  const Constitution({Key? key}) : super(key: key);

  @override
  State<Constitution> createState() => _ConstitutionState();
}

class _ConstitutionState extends State<Constitution> {
  static const String statType = 'Kondycja';
  int value = 0;
  int modifier = 0;
  int setModifier() {
    if (value.isEven) {
      return (value - 10) ~/ 2;
    } else {
      return (value - 11) ~/ 2;
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
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, width: 2, style: BorderStyle.solid)),
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                const Text(statType),
                //value
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  onSubmitted: (text) {
                    value = int.parse(text);
                    setState(() {
                      modifier = setModifier();
                    });
                  },
                ),
                //Modifier
                Text(getModifierString())
              ],
            ),
          ),
        ));
  }
}

class Intelligence extends StatefulWidget {
  const Intelligence({Key? key}) : super(key: key);

  @override
  State<Intelligence> createState() => _IntelligenceState();
}

class _IntelligenceState extends State<Intelligence> {
  static const String statType = 'Inteligencja';
  int value = 0;
  int modifier = 0;
  int setModifier() {
    if (value.isEven) {
      return (value - 10) ~/ 2;
    } else {
      return (value - 11) ~/ 2;
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
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, width: 2, style: BorderStyle.solid)),
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                const Text(statType),
                //value
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  onSubmitted: (text) {
                    value = int.parse(text);
                    setState(() {
                      modifier = setModifier();
                    });
                  },
                ),
                //Modifier
                Text(getModifierString())
              ],
            ),
          ),
        ));
  }
}

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  static const String statType = 'Mądrość';
  int value = 0;
  int modifier = 0;
  int setModifier() {
    if (value.isEven) {
      return (value - 10) ~/ 2;
    } else {
      return (value - 11) ~/ 2;
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
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, width: 2, style: BorderStyle.solid)),
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                const Text(statType),
                //value
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  onSubmitted: (text) {
                    value = int.parse(text);
                    setState(() {
                      modifier = setModifier();
                    });
                  },
                ),
                //Modifier
                Text(getModifierString())
              ],
            ),
          ),
        ));
  }
}

class Charisma extends StatefulWidget {
  const Charisma({Key? key}) : super(key: key);

  @override
  State<Charisma> createState() => _CharismaState();
}

class _CharismaState extends State<Charisma> {
  static const String statType = 'Charyzma';
  int value = 0;
  int modifier = 0;
  int setModifier() {
    if (value.isEven) {
      return (value - 10) ~/ 2;
    } else {
      return (value - 11) ~/ 2;
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
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, width: 2, style: BorderStyle.solid)),
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                const Text(statType),
                //value
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  onSubmitted: (text) {
                    value = int.parse(text);
                    setState(() {
                      modifier = setModifier();
                    });
                  },
                ),
                //Modifier
                Text(getModifierString())
              ],
            ),
          ),
        ));
  }
}
