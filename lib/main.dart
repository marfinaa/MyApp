import 'package:flutter/material.dart';

// import 'MyBody.dart';
// import 'Fox.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "New App",
                style: TextStyle(fontSize: 36),
              ),
            ),
            body: Column(
              children: [MyButton(), MyButton(), MyButton()],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            )));
  }
}

class MyButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int value = 0;
  double fontSize = 30;
  Color color = Colors.pinkAccent;
  Color buttonFontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          value <= 10 ? "Значение: $value" : "Больше 10",
          style: TextStyle(fontSize: fontSize, color: buttonFontColor),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          setState(() {
            value = value + 1;
            if (value > 3) {
              fontSize = 26;
              color = Colors.black87;
            }
            if (value > 6) {
              color = Colors.green;
              fontSize = 46;
            }
            if (value > 9) {
              buttonFontColor = Colors.yellow;
              color = Colors.blueAccent;
            }
          });
        });
  }
}
