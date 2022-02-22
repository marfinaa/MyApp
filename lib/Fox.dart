import 'package:flutter/material.dart';

class Fox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/fox.jpg'),
      width: 100,
      height: 200,
    );
  }
}
