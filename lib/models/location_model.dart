import 'package:flutter/material.dart';
import 'package:weather_app/models/forecast_model.dart';

class LocationModel {
  final String? location;
  final List<ForecastModel>? forecastData;

  LocationModel({this.location, this.forecastData});
}
