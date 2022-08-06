import 'package:flutter/material.dart';
import 'package:theme/localdata.dart';
import 'package:theme/theme.dart';

class Themesof extends StatelessWidget {
  const Themesof({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(width: 15),
      shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      itemCount: internalData.length,
      itemBuilder: ((context, int index) {
        return ThemeDp(
          paint: internalData[index]['color'],
          text: internalData[index]['text'],
          imagepath: internalData[index]['image'],
        );
      }),
    );
  }
}
