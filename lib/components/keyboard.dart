import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          child: Column(
            children: <Widget>[
              ButtonRow([
                Button.big(text: "AC", color: Button.DARK, cb: cb),
                Button.dark(text: "%", cb: cb),
                Button.orange(text: "/", cb: cb),
              ]),
              SizedBox(
                height: 1,
              ),
              ButtonRow([
                Button(text: "7", cb: cb),
                Button(text: "8", cb: cb),
                Button(text: "9", cb: cb),
                Button.orange(text: "x", cb: cb),
              ]),
              SizedBox(
                height: 1,
              ),
              ButtonRow([
                Button(text: "4", cb: cb),
                Button(text: "5", cb: cb),
                Button(text: "6", cb: cb),
                Button.orange(text: "-", cb: cb),
              ]),
              SizedBox(
                height: 1,
              ),
              ButtonRow([
                Button(text: "1", cb: cb),
                Button(text: "2", cb: cb),
                Button(text: "3", cb: cb),
                Button.orange(text: "+", cb: cb),
              ]),
              SizedBox(
                height: 1,
              ),
              ButtonRow([
                Button.big(text: "0", cb: cb),
                Button(text: ".", cb: cb),
                Button.orange(text: "=", cb: cb),
              ]),
            ],
          ),
        ));
  }
}
