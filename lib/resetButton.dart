import 'matchesModel.dart';
import 'previewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colorPreview = Provider.of<PreviewModel>(context, listen: true);

    var colorMatch = Provider.of<MatchesModel>(context);

    void matchesReset() {
      colorMatch.red = 0.0;
      colorMatch.blue = 0.0;
      colorMatch.green = 0.0;
    }

    void colorPreviewReset() {
      colorPreview.reset();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.blue,
        child: Text(
          'Reset',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          colorPreviewReset();
          matchesReset();
        },
      ),
    );
  }
}
