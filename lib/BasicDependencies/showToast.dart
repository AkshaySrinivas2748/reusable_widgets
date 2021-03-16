/*
1.Add fluttertoast: ^7.1.6 to pubspec.yaml file.
2.Create Basic Dependencies folder in lib folder of your project.
3.Create the a dart file with name ReusableWidget.dart and paste the codes below
4. Use import '../BasicDependencies/ReUsableWidgets.dart'; in pages where toast is used.
*/
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(text,
    {toastLength, gravity, timeInSeconds, bgColor, textColor, fontSize}) {
  Fluttertoast.showToast(
      msg: "$text",
      toastLength: toastLength == null ? Toast.LENGTH_SHORT : toastLength,
      gravity: gravity == null ? ToastGravity.CENTER : gravity,
      timeInSecForIosWeb: timeInSeconds == null ? 1 : timeInSeconds,
      backgroundColor: bgColor == null ? Colors.grey : bgColor,
      textColor: textColor == null ? Colors.white : textColor,
      fontSize: fontSize == null ? 16.0 : fontSize);
}
/*
Usage Details
Syntax to use:
"showToast('Not Registered');"//(Exclude Double quotes to use it)
*/
/*
Documentation
To customise properties:
showToast(
        'Not Registered',//Text to show
        toastLength: Toast.LENGTH_LONG,//Toast length
        gravity: ToastGravity.BOTTOM,//Toast Position
        timeInSeconds: 2,//Duration in seconds
        bgColor: Colors.green,//Background Color
        textColor: Colors.blue,//Text Color
        fontSize: 18.0//FontSize
      );
*/
