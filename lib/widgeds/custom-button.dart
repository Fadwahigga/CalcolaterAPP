// ignore_for_file: file_names

import 'package:calcolater/constans/constans.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      @required this.btnColor,
      @required this.btnTxt,
      this.flex,
      @required this.callBack})
      : super(key: key);
  Color? btnColor;
  String? btnTxt;
  int? flex;
  Function? callBack;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex == null ? 1 : flex!,
      child: GestureDetector(
        onTap: (() {
          callBack!(btnTxt);
        }),
        child: Container(
          width: 70,
          height: 80,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: btnColor,
          ),
          child: Text(
            btnTxt!,
            style: Constans.btnTxtStyle,
          ),
        ),
      ),
    );
  }
}
