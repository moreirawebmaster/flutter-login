import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Text text;
  final Icon icon;
  final Color color;
  final Color borderColor;
  final double cornerRadius;
  final Function onTap;
  final double width;
  final double height;

  const CircleButton(
      {Key key,
      @required
      this.text,
      this.icon,
      this.color = Colors.transparent,
      this.borderColor = Colors.transparent,
      this.cornerRadius = 25,
      this.onTap,
      this.width = double.infinity,
      this.height = 60})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(cornerRadius),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(cornerRadius),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          height: height,
          child: Center(child: text),
        ),
      ),
    );
  }
}
