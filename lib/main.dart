import 'package:flutter/material.dart';
import 'package:projet_dyma_end/models/activity_model.dart';
import 'package:projet_dyma_end/providers/city_provider.dart';
import 'package:projet_dyma_end/providers/trip_provider.dart';
import 'package:projet_dyma_end/views/trip/trip_view.dart';
import 'package:provider/provider.dart';

import 'models/city_model.dart';
import 'models/trip_model.dart';
import './views/city/city_view.dart';
import './views/home/home_view.dart';
import './views/404/not_found.dart';
import './views/trips/trips_view.dart';

main() {
  runApp(DymaTrip());
}

class DymaTrip extends StatefulWidget {
  @override
  _DymaTripState createState() => _DymaTripState();
}

class _DymaTripState extends State<DymaTrip> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CityProvider()),
        ChangeNotifierProvider.value(value: TripProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (_) => HomeView(),
          CityView.routeName: (_) => CityView(),
          TripsView.routeName: (_) => TripsView(),
          TripView.routeName: (_) => TripView()
        },
        onUnknownRoute: (_) => MaterialPageRoute(
          builder: (_) => NotFound(),
        ),
      ),
    );
  }
}