import 'package:flutter/material.dart';

import 'activity_type.dart';
import 'activity_widget.dart';

enum ActivityType { walking, running, biking }
enum ActivityQuality { good, bad }

abstract class _Constants {
  static const double iconSize = 30;
  static const double itemSpacing = 20;
  static const double badgeSize = 15;
}

class ActivitiesWidget extends StatelessWidget {
  const ActivitiesWidget({
    Key key,
    this.activities,
  }) : super(key: key);

  final Map<ActivityType, ActivityQuality> activities;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildActivities(),
      );

  Widget _buildSpacing() => SizedBox(
        width: _Constants.itemSpacing - _Constants.badgeSize / 2,
      );

  List<Widget> _buildActivities() {
    List<Widget> widgets = [SizedBox(width: _Constants.itemSpacing)];

    activities.forEach((activityType, activityQuality) {
      widgets
        ..add(
          ActivityWidget(
            activityType: activityType,
            activityQuality: activityQuality,
          ),
        )
        ..add(_buildSpacing());
    });

    return widgets;
  }
}
