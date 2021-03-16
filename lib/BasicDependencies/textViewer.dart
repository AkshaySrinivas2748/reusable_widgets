/*
1.Add fluttertoast: ^7.1.6 to pubspec.yaml file.
2.Create Basic Dependencies folder in lib folder of your project.
3.Create the a dart file with name ReusableWidget.dart and paste the codes below
4. Use import '../BasicDependencies/ReUsableWidgets.dart'; in pages where toast is used.
*/
import 'package:flutter/material.dart';
textViewer(text,mode) {
  return Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(top: 10),
    height: 40,
    padding: EdgeInsets.only(left: 15),
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueGrey[100],
        ),
        borderRadius: BorderRadius.circular(3)),
    child: Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: Color(0xff676767).withOpacity(mode ? 1.0 : 0.5),
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: 0,
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
