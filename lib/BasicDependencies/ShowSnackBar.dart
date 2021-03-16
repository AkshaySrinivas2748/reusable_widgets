/*
1.Create Basic Dependencies folder in lib folder of your project.
2.Create the a dart file with name ReusableWidget.dart and paste the codes below
3. Use import '../BasicDependencies/ReUsableWidgets.dart'; in pages where you want to show snackBar is used.
*/

import 'package:flutter/material.dart';

showSnackBar(context, text, {color, duration, key}) {
  final snackBar = SnackBar(
    key: key,
    content: Text(text),
    backgroundColor: color == null ? Colors.black.withOpacity(0.8) : color,
    duration: duration == null ? Duration(seconds: 1) : duration,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

/*
Usage Details
Syntax to use:
"showSnackBar(context, 'Your Text to show');"//(Exclude Double quotes to use it)
*/
/*
Documentation
To customise properties:
showSnackBar(
        context,
        'Your Text to show',
        key:your_Key,
        color: Colors.green.withOpacity(0.8),
        duration: Duration(seconds: 10),
      );
*/
