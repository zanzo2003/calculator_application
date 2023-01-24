import 'package:flutter/material.dart';
import 'colours.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorApp> {
  double firstNumber = 0.0;
  double secondNumber = 0.0;
  var input = "";
  var output = "";
  var operator = "";

  onButtonClick(value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.black,
            width: double.infinity,
            padding: const EdgeInsets.all(22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  input,
                  style: const TextStyle(fontSize: 48, color: Colors.white70),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  output,
                  style: const TextStyle(fontSize: 28, color: Colors.white38),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
          Row(
            children: [
              button(
                  text: "AC",
                  buttonColors: operatorColor,
                  textColor: orangecolor),
              button(
                  text: "\u{2190}",
                  buttonColors: operatorColor,
                  textColor: orangecolor),
              button(text: "", textColor: Colors.transparent),
              button(text: "\u{00F7}", buttonColors: operatorColor),
            ],
          ),
          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(text: "9"),
              button(text: "\u{00D7}", buttonColors: buttonColor),
            ],
          ),
          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(text: "-", buttonColors: buttonColor),
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(text: "\u{002B}", buttonColors: buttonColor),
            ],
          ),
          Row(
            children: [
              button(
                  text: "%", buttonColors: buttonColor, textColor: orangecolor),
              button(text: "0"),
              button(
                  text: ".", buttonColors: buttonColor, textColor: orangecolor),
              button(
                  text: "=", buttonColors: buttonColor, textColor: orangecolor),
            ],
          )
        ],
      ),
    );
  }

  Widget button({text, textColor = Colors.white, buttonColors = buttonColor}) {
    return (Expanded(
        child: Container(
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(22),
              backgroundColor: buttonColors),
          onPressed: () => onButtonClick(text),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18, color: textColor, fontWeight: FontWeight.bold),
          )),
    )));
  }
}
