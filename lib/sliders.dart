import 'matchesModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sliders extends StatelessWidget {
  Widget _buildSlider(
          {String label, Color color, double value, Function onChanged}) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              label,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Slider(
              activeColor: color,
              inactiveColor: color.withOpacity(0.3),
              value: value,
              onChanged: onChanged,
              label: value.toString(),
              min: 0,
              max: 255,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    var color = Provider.of<MatchesModel>(context, listen: true);

    return Column(
      children: <Widget>[
        _buildSlider(
          label: "Red (${color.red.toInt()})",
          color: Colors.red,
          value: color.red,
          onChanged: (value) => color.red = value,
        ),
        _buildSlider(
          label: "Green (${color.green.toInt()})",
          color: Colors.green,
          value: color.green,
          onChanged: (value) => color.green = value,
        ),
        _buildSlider(
          label: "Blue (${color.blue.toInt()})",
          color: Colors.blue,
          value: color.blue,
          onChanged: (value) => color.blue = value,
        ),
      ],
    );
  }
}
