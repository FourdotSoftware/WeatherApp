import 'package:flutter/material.dart';
import 'package:weather_app/const/app_images.dart';
import 'package:weather_app/const/app_texts.dart';
import 'package:weather_app/models/feature_field_model.dart';
import 'package:weather_app/models/forecast_model.dart';
import 'package:weather_app/models/location_model.dart';

class AppData {
  static FeatureFieldModel featureField1 = FeatureFieldModel(
      icon: Icons.water_drop, value: "68%", name: AppTexts.humidity);

  static FeatureFieldModel featureField2 =
      FeatureFieldModel(icon: Icons.air, value: "%72", name: AppTexts.wind);

  static FeatureFieldModel featureField3 = FeatureFieldModel(
      icon: Icons.av_timer, value: "%92", name: AppTexts.airPressure);

  static FeatureFieldModel featureField4 = FeatureFieldModel(
      icon: Icons.visibility, value: "%29", name: AppTexts.visibility);

  static List<FeatureFieldModel> featuresField = [
    featureField1,
    featureField2,
    featureField3,
    featureField4
  ];

  static List<ForecastModel> days = [
    ForecastModel(
        hour: "15:00",
        date: "21.06.2022",
        day: "Pazar",
        weatherImage: AppImages.photo2,
        temp: AppTexts.celcius,
        explanation: "Partly Cloudly",
        features: featuresField,
        hours: [
          ForecastModel(
              hour: "00.00",
              weatherImage: AppImages.photo2,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "02.00",
              weatherImage: AppImages.photo4,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "04.00",
              weatherImage: AppImages.photo3,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "06.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "08.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "10.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "12.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "14.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "16.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "18.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "20.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "22.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "24.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
        ]),
    ForecastModel(
        hour: "15:00",
        date: "22.06.2022",
        day: "Pazartesi",
        weatherImage: AppImages.photo1,
        temp: AppTexts.celcius,
        explanation: "Partly Cloudly",
        features: featuresField,
        hours: [
          ForecastModel(
              hour: "00.00",
              weatherImage: AppImages.photo2,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "02.00",
              weatherImage: AppImages.photo5,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "04.00",
              weatherImage: AppImages.photo4,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "06.00",
              weatherImage: AppImages.photo3,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "08.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "10.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "12.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "14.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "16.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "18.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "20.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "22.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "24.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
        ]),
    ForecastModel(
        hour: "15:00",
        date: "23.06.2022",
        day: "Salı",
        weatherImage: AppImages.photo3,
        temp: AppTexts.celcius,
        explanation: "Partly Cloudly",
        features: featuresField,
        hours: [
          ForecastModel(
              hour: "00.00",
              weatherImage: AppImages.photo2,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "02.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "04.00",
              weatherImage: AppImages.photo4,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "06.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "08.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "10.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "12.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "14.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "16.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "18.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "20.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "22.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "24.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
        ]),
    ForecastModel(
        hour: "15:00",
        date: "24.06.2022",
        day: "Çarşamba",
        weatherImage: AppImages.photo4,
        temp: AppTexts.celcius,
        explanation: "Partly Cloudly",
        features: featuresField,
        hours: [
          ForecastModel(
              hour: "00.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "02.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "04.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "06.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "08.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "10.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "12.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "14.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "16.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "18.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "20.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "22.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "24.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
        ]),
    ForecastModel(
        hour: "15:00",
        date: "25.06.2022",
        day: "Perşembe",
        weatherImage: AppImages.photo5,
        temp: AppTexts.celcius,
        explanation: "Partly Cloudly",
        features: featuresField,
        hours: [
          ForecastModel(
              hour: "00.00",
              weatherImage: AppImages.photo5,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "02.00",
              weatherImage: AppImages.photo2,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "04.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "06.00",
              weatherImage: AppImages.photo4,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "08.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "10.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "12.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "14.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "16.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "18.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "20.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "22.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "24.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
        ]),
    ForecastModel(
        hour: "15:00",
        date: "26.06.2022",
        day: "Cuma",
        weatherImage: AppImages.photo5,
        temp: AppTexts.celcius,
        explanation: "Partly Cloudly",
        features: featuresField,
        hours: [
          ForecastModel(
              hour: "00.00",
              weatherImage: AppImages.photo4,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "02.00",
              weatherImage: AppImages.photo2,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "04.00",
              weatherImage: AppImages.photo3,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "06.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "08.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "10.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "12.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "14.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "16.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "18.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "20.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "22.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "24.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
        ]),
    ForecastModel(
        hour: "15:00",
        date: "27.06.2022",
        day: "Cumartesi",
        weatherImage: AppImages.photo3,
        temp: AppTexts.celcius,
        explanation: "Partly Cloudly",
        features: featuresField,
        hours: [
          ForecastModel(
              hour: "00.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "02.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "04.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "06.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "08.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "10.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "12.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "14.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "16.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "18.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "20.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "22.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
          ForecastModel(
              hour: "24.00",
              weatherImage: AppImages.photo1,
              temp: AppTexts.celcius),
        ])
  ];

  static LocationModel location =
      LocationModel(location: "İstanbul", forecastData: days);
}
