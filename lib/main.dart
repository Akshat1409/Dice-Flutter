import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePage_State createState() => _DicePage_State();
}

class _DicePage_State extends State<DicePage> {
  var leftdie = 6;
  var rightdie = 2;
  @override
  Widget build(BuildContext context) {
    var random = new Random();
    void check() {
      rightdie = random.nextInt(5) + 1;
      leftdie = random.nextInt(5) + 1;
    }

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  check();
                });

                //Image.asset('images/dice$leftdie.png');
              },
              child: Image.asset('images/dice$leftdie.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  check();
                });
              },
              child: Image.asset('images/dice$rightdie.png'),
            ),
          ),
        ],
      ),
    );
  }
}
