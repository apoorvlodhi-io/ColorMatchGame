import 'previewCircle.dart';
import 'resetButton.dart';

import 'sliders.dart';
import 'submit.dart';

import 'package:flutter/material.dart';

import 'matches.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Match'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Text(
                'Match the Color',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PreviewCircle(),
                Matches(),
              ],
            ),
          ),
          Sliders(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Submit(), ResetButton()],
          )
        ],
      ),
    );
  }
}
