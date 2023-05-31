// ignore_for_file: file_names
import 'package:flutter/material.dart';

class RoundedButtom extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButtom({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            textStyle: const TextStyle(fontSize: 16),
          ),
          onPressed:press(),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
