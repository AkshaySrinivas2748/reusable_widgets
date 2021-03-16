/*
1.Add fluttertoast: ^7.1.6 to pubspec.yaml file.
2.Create Basic Dependencies folder in lib folder of your project.
3.Create the a dart file with name ReusableWidget.dart and paste the codes below
4. Use import '../BasicDependencies/ReUsableWidgets.dart'; in pages where toast is used.
*/
import 'package:flutter/material.dart';

textViewer(text,
    {
      margin,
      padding,
      containerColor,
      borderColor,
      borderRadius,
      textOpacity,
      textColor,
      fontSize,
      fontWeight,
      fontStyle,
      letterSpacing
    }) {
  return Container(
    alignment: Alignment.centerLeft,
    margin: margin == null ? EdgeInsets.fromLTRB(20, 20, 20, 0) : margin,
    height: 40,
    padding: padding == null ? EdgeInsets.only(left: 15, right: 20) : padding,
    decoration: BoxDecoration(
        color:containerColor==null?Colors.transparent:containerColor,
        border: Border.all(
          color: borderColor == null ? Colors.blueGrey[100] : borderColor,
        ),
        borderRadius:
        borderRadius == null ? BorderRadius.circular(3) : borderRadius),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: textColor == null
              ? Color(0xff676767)
              .withOpacity(textOpacity == null ? 1.0 : textOpacity)
              : textColor.withOpacity(textOpacity == null ? 1.0 : textOpacity),
          fontSize: fontSize == null ? 12 : fontSize,
          fontWeight: fontWeight == null ? FontWeight.w400 : fontWeight,
          fontStyle: fontStyle == null ? FontStyle.normal : fontStyle,
          letterSpacing: letterSpacing == null ? 0 : letterSpacing,
        ),
      ),
    ),
  );
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
