import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:projet_dyma_end/models/activity_model.dart';

class Trip {
  String id;
  String city;
  List<Activity> activities;
  DateTime date;
  Trip({
    @required this.city,
    @required this.activities,
    @required this.date,
  }) : id = UniqueKey().toString();
}
