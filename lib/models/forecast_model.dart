import 'package:flutter/material.dart';
import 'package:weather_app/models/feature_field_model.dart';

class ForecastModel {
  final String? hour;
  final String? date;
  final String? day;
  final String? weatherImage;
  final String? temp;
  final String? explanation;
  final List<FeatureFieldModel>? features;
  final List<ForecastModel>? hours;

  ForecastModel(
      {this.hour,
      this.day,
      this.hours,
      this.date,
      this.weatherImage,
      this.temp,
      this.explanation,
      this.features});
}
