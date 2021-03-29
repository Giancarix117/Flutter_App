import 'package:flutter/material.dart';
import 'package:specialized_nutrition/ui/home/widgets/activities_widget.dart';
import 'package:specialized_nutrition/ui/home/widgets/animated_percentage_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTitle(),
            _buildAirPollutionContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildAirPollutionContent() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPercentageWidget(
              fromValue: 0,
              toValue: 310,
            ),
            Text("norm"),
          ],
        ),
      );

  Widget _buildTitle() => Text(
        "Specialized Nutrition",
        textAlign: TextAlign.center,
      );
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildTitle(),
          _buildAirPollutionContent(),
          _buildActivitiesWidget(),
        ],
      ),
    ),
  );
}

Widget _buildActivitiesWidget() => Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: ActivitiesWidget(
        activities: {
          ActivityType.walking: ActivityQuality.good,
          ActivityType.running: ActivityQuality.bad,
          ActivityType.biking: ActivityQuality.bad,
        },
      ),
    );
