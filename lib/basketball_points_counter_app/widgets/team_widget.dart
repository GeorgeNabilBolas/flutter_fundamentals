import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/basketball_points_counter_app/widgets/adding_point_widget.dart';

class TeamWidget extends StatefulWidget {
  TeamWidget(this.teamName, this.score, {super.key});
  final String teamName;
  int score;
  @override
  State<TeamWidget> createState() => _TeamWidgetState();
}

class _TeamWidgetState extends State<TeamWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.teamName, style: const TextStyle(fontSize: 24)),
        Text('${widget.score}', style: const TextStyle(fontSize: 100)),
        AddingPointWidget(
          numberOfPoints: 1,
          onPressed: addPoints,
        ),
        AddingPointWidget(
          numberOfPoints: 2,
          onPressed: addPoints,
        ),
        AddingPointWidget(
          numberOfPoints: 3,
          onPressed: addPoints,
        ),
      ],
    );
  }

  void addPoints(int numberOfPoints) {
    widget.score += numberOfPoints;
    setState(() {});
  }
}
