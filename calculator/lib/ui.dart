import 'package:flutter/material.dart';
import 'colours.dart';


class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
            width: double.infinity,
            padding: EdgeInsets.all(22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Input",
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white
                ),
                ),
                Text("Output",
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white
                ),
                )
              ],
            ),
          )),
          Row(
            children:[
              button(text: "AC", buttonColors: operatorColor, textColor: orangecolor),
              button(text: "\u{2190}",buttonColors: operatorColor,textColor: orangecolor),
              button(text: "", textColor: Colors.transparent),
              button(text: "\u{00F7}",buttonColors: operatorColor),
              ],
          ),
          Row(
            children:[
              button(text: "7"),
              button(text: "8"),
              button(text: "9"),
              button(text: "\u{00D7}",buttonColors: buttonColor),
              ],
          ),
          Row(
            children:[
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(text: "-",buttonColors: buttonColor),
              ],
          ),
          Row(
            children:[
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(text: "\u{002B}",buttonColors: buttonColor),
              ],
          ),
          Row(
            children:[
              button(text: "%",buttonColors: buttonColor,textColor: orangecolor),
              button(text: "0"),
              button(text: ".",buttonColors: buttonColor,textColor: orangecolor),
              button(text: "=",buttonColors: buttonColor,textColor: orangecolor),
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
              shape: CircleBorder(),
              padding: const EdgeInsets.all(22),
              backgroundColor: buttonColors),
          onPressed: () {},
          child:Text(
            text,
            style: TextStyle(
                fontSize: 18, color: textColor, fontWeight: FontWeight.bold),
          )),
    )));
  }
}
