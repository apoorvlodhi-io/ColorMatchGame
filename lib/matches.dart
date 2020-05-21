import 'circle.dart';
import 'matchesModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Matches extends StatelessWidget {
  static var matchHex;

  @override
  Widget build(BuildContext context) => Consumer<MatchesModel>(
        builder: (context, matchesModel, _) {
          var color = Color.fromRGBO(
            matchesModel.red.toInt(),
            matchesModel.green.toInt(),
            matchesModel.blue.toInt(),
            1,
          );

          matchHex = color.value;

          return Circle(color);
        },
      );
}
