import 'circle.dart';
import 'previewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreviewCircle extends StatelessWidget {
  static var previewHex;

  @override
  Widget build(BuildContext context) {
    var color = Provider.of<PreviewModel>(context, listen: true);

    previewHex = color.colorsPreview.value;

    return Circle(color.colorsPreview);
  }
}
