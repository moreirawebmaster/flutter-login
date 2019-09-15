import 'package:flutter/material.dart';

class TextFieldLabeled extends StatelessWidget {
  final String text;
  final bool obscure;

  const TextFieldLabeled({Key key, this.text, this.obscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
          ),
          TextField(
            style: TextStyle(color: Theme.of(context).accentColor),
            autofocus: false,
            obscureText: obscure,
            cursorColor: Theme.of(context).accentColor,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
            ),
          )
        ],
      ),
    );
  }
}
