import 'package:flutter/material.dart';
import 'package:reusable_widgets/BasicDependencies/ShowSnackBar.dart';
import 'package:reusable_widgets/BasicDependencies/showToast.dart';
import 'package:reusable_widgets/BasicDependencies/textViewer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'App2748',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Column(
          children: [
            textViewer(
                'This is the sample Text Viewer with default properties'),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                showToast('This is the demo Toast');
              },
              child: Text('  Click here to show Toast  ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff4a4a4a),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                  )),
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black, width: 0.5)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(5.0)),
            ),
            TextButton(
              onPressed: () {
                showSnackBar(context, 'This is the demo SnackBar');
              },
              child: Text('  Click here to snackBar  ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff4a4a4a),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                  )),
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black, width: 0.5)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(5.0)),
            ),
          ],
        ),
      ),
    ));
  }
}
