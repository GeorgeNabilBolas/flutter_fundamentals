import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/language_learning_app/models/tile_model.dart';
import 'package:flutter_fundamentals/language_learning_app/widgets/tile_content_widget.dart';
import 'package:flutter_fundamentals/language_learning_app/widgets/tile_image.dart';
import 'package:flutter_fundamentals/language_learning_app/widgets/tiles_content_widget.dart';

class TileContentBody extends StatelessWidget {
  const TileContentBody({
    super.key,
    required this.model,
  });
  final ContentTileModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (model.image != null) TileImage(image: model.image!),
        TileContent(model: model),
      ],
    );
  }
}
