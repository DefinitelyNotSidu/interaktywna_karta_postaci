import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharData extends StatefulWidget {
  const CharData({Key? key}) : super(key: key);

  @override
  State<CharData> createState() => _CharDataState();
}

class _CharDataState extends State<CharData> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Form(
            child: Flexible(
          child: Row(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid)),
                child: const Text('test'),
              )
            ],
          ),
        )));
  }
}

class CharName extends StatefulWidget {
  const CharName({Key? key}) : super(key: key);

  @override
  State<CharName> createState() => _CharNameState();
}

class _CharNameState extends State<CharName> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey, width: 2, style: BorderStyle.solid)),
    ));
  }
}
