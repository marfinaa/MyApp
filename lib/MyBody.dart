import 'package:flutter/material.dart';
import 'ColorContainer.dart';
import 'Fox.dart';

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorContainer(),
        Fox(),
        ColorContainer(),
        Fox(),
        ColorContainer()
      ],
    );
  }
}
