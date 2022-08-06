import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThemeDp extends StatelessWidget {
  final String text;
  final String imagepath;
  Color paint;
  ThemeDp(
      {Key? key,
      required this.text,
      required this.imagepath,
      required this.paint})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: paint, borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Image.asset(
            imagepath,
            height: 30,
          )),
        ),
        Text(text, style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}
