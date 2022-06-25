// ignore_for_file: avoid_unnecessary_containers

import 'package:calcolater/constans/constans.dart';
import 'package:calcolater/widgeds/custom-button.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String exp = ''; // Result
  String history = '';
  String op = '';
  double num1 = 0;
  double num2 = 0;
  void numClick(String btnTxt) {
    if (btnTxt == "Ac") {
      setState(() {
        exp = ''; // Result
        history = '';
      });
      num1 = 0;
      num2 = 0;
    } else if (btnTxt == "C") {
      setState(() {
        exp = '';
      });
    } else if (btnTxt == "+" ||
        btnTxt == "-" ||
        btnTxt == "*" ||
        btnTxt == "/" ||
        btnTxt == "%") {
      op = btnTxt;
      num1 = double.parse(exp);
      setState(() {
        exp = '';
        history = num1.toString();
        history += btnTxt;
      });
    } else if (btnTxt == ".") {
      if (exp.contains(".")) {
      } else {
        setState(() {
          exp += btnTxt;
        });
      }
    } else if (btnTxt == "=") {
      num2 = double.parse(exp);
      history += exp;
      switch (op) {
        case '+':
          {
            exp = (num1 + num2).toString();
          }
          break;
        case '-':
          {
            exp = (num1 - num2).toString();
          }
          break;
        case '*':
          {
            exp = (num1 * num2).toString();
          }
          break;
        case '%':
          {
            exp = (num1 % num2).toString();
          }
          break;
        case '/':
          {
            num2 == 0 ? exp = "un Valid" : exp = (num1 / num2).toString();
          }
          break;
        default:
          break;
      }
      setState(() {});
    } else {
      setState(() {
        exp += btnTxt;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calcolater"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end, // widged start from bottom
        children: [
          Container(
            margin: Constans.txtMargin,
            alignment: Constans.txtAlignment,
            child: Text(
              history,
              style: Constans.style1,
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 5,
          ),
          Container(
            margin: Constans.txtMargin,
            alignment: Constans.txtAlignment,
            child: Text(
              exp,
              style: Constans.style1,
            ),
          ),
          Row(
            children: [
              CustomButton(
                btnColor: Colors.blue,
                btnTxt: "Ac",
                callBack: numClick,
              ),
              CustomButton(
                  btnColor: Colors.yellow, btnTxt: "C", callBack: numClick),
              CustomButton(
                  btnColor: Colors.teal, btnTxt: "%", callBack: numClick),
              CustomButton(
                  btnColor: Colors.red, btnTxt: "/", callBack: numClick),
            ],
          ),
          Row(
            children: [
              CustomButton(
                  btnColor: Colors.orange, btnTxt: "7", callBack: numClick),
              CustomButton(
                  btnColor: Colors.green, btnTxt: "8", callBack: numClick),
              CustomButton(
                  btnColor: Colors.purple, btnTxt: "9", callBack: numClick),
              CustomButton(
                  btnColor: Colors.grey, btnTxt: "*", callBack: numClick),
            ],
          ),
          Row(
            children: [
              CustomButton(
                  btnColor: Colors.blue, btnTxt: "4", callBack: numClick),
              CustomButton(
                  btnColor: Colors.yellow, btnTxt: "5", callBack: numClick),
              CustomButton(
                  btnColor: Colors.pink, btnTxt: "6", callBack: numClick),
              CustomButton(
                  btnColor: Colors.purple, btnTxt: "-", callBack: numClick),
            ],
          ),
          Row(
            children: [
              CustomButton(
                  btnColor: const Color.fromARGB(255, 116, 112, 112),
                  btnTxt: "1",
                  callBack: numClick),
              CustomButton(
                  btnColor: Colors.teal, btnTxt: "2", callBack: numClick),
              CustomButton(
                  btnColor: Colors.blue, btnTxt: "3", callBack: numClick),
              CustomButton(
                  btnColor: Colors.orange, btnTxt: "+", callBack: numClick),
            ],
          ),
          Row(
            children: [
              CustomButton(
                  btnColor: Colors.grey,
                  btnTxt: "0",
                  flex: 2,
                  callBack: numClick),
              CustomButton(
                  btnColor: Colors.yellow, btnTxt: ".", callBack: numClick),
              CustomButton(
                  btnColor: Colors.blue, btnTxt: "=", callBack: numClick),
            ],
          ),
        ],
      ),
    );
  }
}
