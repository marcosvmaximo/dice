import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

class Dadoos extends StatefulWidget {
  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numberImage1 = 1;
  int numberImage2 = 1;

  numberRandom(int max) {
    setState(() {
      numberImage1 = Random().nextInt(max) + 1;
      numberImage2 = Random().nextInt(max) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                numberRandom(6);
              },
              child: Image.asset('imagens/dado$numberImage1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                numberRandom(6);
              },
              child: Image.asset('imagens/dado$numberImage2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
