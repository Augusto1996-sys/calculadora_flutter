import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callback;

  Keyboard(this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(
              texto: "AC",
              color: Button.DARK,
              callback: callback,
            ),
            Button.operation(
              texto: "%",
              callback: callback,
            ),
            Button.operation(
              texto: "/",
              callback: callback,
            ),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(
              texto: "7",
              callback: callback,
            ),
            Button(
              texto: "8",
              callback: callback,
            ),
            Button(
              texto: "9",
              callback: callback,
            ),
            Button.operation(
              texto: "x",
              callback: callback,
            ),
          ]),
          SizedBox(height: 1),
          SizedBox(height: 1),
          ButtonRow([
            Button(
              texto: "4",
              callback: callback,
            ),
            Button(
              texto: "5",
              callback: callback,
            ),
            Button(
              texto: "6",
              callback: callback,
            ),
            Button.operation(
              texto: "-",
              callback: callback,
            ),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(
              texto: "3",
              callback: callback,
            ),
            Button(
              texto: "2",
              callback: callback,
            ),
            Button(
              texto: "1",
              callback: callback,
            ),
            Button.operation(
              texto: "+",
              callback: callback,
            ),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button.big(
              texto: "0",
              callback: callback,
            ),
            Button(
              texto: ".",
              callback: callback,
            ),
            Button.operation(
              texto: "=",
              callback: callback,
            ),
          ]),
        ],
      ),
    );
  }
}
