import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/language_learning_app/models/tile_model.dart';
import 'package:flutter_fundamentals/language_learning_app/models/toku_app_data.dart';
import 'package:flutter_fundamentals/language_learning_app/widgets/appbar_widget.dart';
import 'package:flutter_fundamentals/language_learning_app/widgets/tile_content_body.dart';

class TilesContentWidget extends StatelessWidget {
  const TilesContentWidget({
    super.key,
    required this.tileContent,
    required this.title,
  });
  final String title;
  final List<ContentTileModel> tileContent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: title),
      body: ListView.builder(
        itemCount: tileContent.length,
        itemBuilder: (context, index) {
          return TileContentBody(
            model: tileContent[index],
          );
        },
      ),
    );
  }
}
