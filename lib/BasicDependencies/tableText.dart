import 'package:flutter/material.dart';
tableText({text, alignment}) {
  return Container(
      margin: EdgeInsets.only(top: 5),
      alignment: alignment==null?Alignment.centerLeft:alignment,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(text==null?'':text,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xff4a4a4a),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              letterSpacing: 0,
            )),
      ));
}
