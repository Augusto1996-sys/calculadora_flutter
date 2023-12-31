import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String texto;
  final bool big;
  final Color color;
  final void Function(String) callback;

  Button(
      {required this.texto,
      this.big = false,
      this.color = DEFAULT,
      required this.callback});
  Button.big(
      {required this.texto,
      this.big = true,
      this.color = DEFAULT,
      required this.callback});
  Button.operation(
      {required this.texto,
      this.big = false,
      this.color = OPERATION,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(
          texto,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w100),
        ),
        onPressed: () => callback(texto),
      ),
    );
  }
}
