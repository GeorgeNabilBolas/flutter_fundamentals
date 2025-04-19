import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/basketball_points_counter_app/widgets/basketball_app_appbar_widget.dart';
import 'package:flutter_fundamentals/basketball_points_counter_app/widgets/reset_point_widget.dart';
import 'package:flutter_fundamentals/basketball_points_counter_app/widgets/team_widget.dart';

class BasketballPointsCounterWidget extends StatefulWidget {
  const BasketballPointsCounterWidget({super.key});

  @override
  State<BasketballPointsCounterWidget> createState() => _BasketballPointsCounterWidgetState();
}

class _BasketballPointsCounterWidgetState extends State<BasketballPointsCounterWidget> {
  @override
  Widget build(BuildContext context) {
    int score = 0;
    return Scaffold(
      appBar: const BasketBallAppAppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamWidget('Team A', score),
              SizedBox(
                height: MediaQuery.sizeOf(context).height - 200,
                child: const VerticalDivider(),
              ),
              TeamWidget('Team B', score),
            ],
          ),
          ResetPointWidget(onPressed: () => setState(() {}))
        ],
      ),
    );
  }
}
