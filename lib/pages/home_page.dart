import 'package:flutter/material.dart';
import 'package:weather_app/app_data.dart';
import 'package:weather_app/app_state.dart';
import 'package:weather_app/const/app_colors.dart';
import 'package:weather_app/const/app_images.dart';
import 'package:weather_app/const/app_paddings.dart';
import 'package:weather_app/const/app_texts.dart';
import 'package:weather_app/pages/detail_page.dart';
import 'package:weather_app/widgets/images/weather_image.dart';
import 'package:weather_app/widgets/texts/body_text2.dart';
import 'package:weather_app/widgets/texts/body_text3.dart';
import 'package:weather_app/widgets/texts/body_text4.dart';
import 'package:weather_app/widgets/texts/body_text5.dart';
import 'package:weather_app/widgets/texts/title1.dart';
import 'package:weather_app/widgets/texts/title2.dart';
import 'package:weather_app/widgets/texts/title3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.paleGrey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: [0.9, 0.1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppColors.paleGrey, AppColors.lightBlueGrey])),
                child: Column(
                  children: [
                    AppPaddings.mediumPadding(),
                    Title2(
                      AppData.location.location!,
                      isDark: true,
                    ),
                    BodyText3(
                      DateTime.now().toString(),
                      isDark: true,
                    ),
                    SizedBox(
                      height: 500,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            AppState.selectedForecastIndex = value;
                          });
                        },
                        controller: PageController(
                            viewportFraction: 0.8, initialPage: 1),
                        scrollDirection: Axis.horizontal,
                        itemCount: AppData.days.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              weatherForecastField(index: index),
                              AppPaddings.smallPadding(),
                              featureField(index: index),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppColors.lightBlueGrey, AppColors.paleGrey])),
                child: Column(
                  children: [
                    // AppPaddings.SmallPadding(),
                    AppPaddings.smallPadding(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Title3(AppTexts.today),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(),
                                  ));
                            },
                            child: Row(
                              children: [
                                Title3(AppTexts.days),
                                Icon(Icons.navigate_next)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: AppData.days[0].hours!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return hourlyWeather(
                              hour: AppData.days[AppState.selectedForecastIndex]
                                  .hours![index].hour,
                              image: AppData
                                  .days[AppState.selectedForecastIndex]
                                  .hours![index]
                                  .weatherImage,
                              temp: AppData.days[AppState.selectedForecastIndex]
                                  .hours![index].temp);
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget weatherForecastField(
          {String? data,
          String? image,
          String? temp,
          String? explanation,
          required int index}) =>
      Column(
        children: [
          AppPaddings.smallPadding(),
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Column(
                children: [
                  Text(""),
                  weatherForecastBox(
                      image: AppData.days[index].weatherImage,
                      temp: AppData.days[index].temp,
                      explanation: AppData.days[index].explanation),
                ],
              ),
              dateBox(data: AppData.days[index].date)
            ],
          ),
        ],
      );

  Container weatherForecastBox(
          {String? image, String? temp, String? explanation}) =>
      Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 30, color: AppColors.primary)],
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  AppColors.palePurple,
                  AppColors.primary,
                ]),
            borderRadius: BorderRadius.circular(40)),
        child: AppPaddings.boxPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WeatherImage(
                image!,
                size: ImageSize.big,
              ),
              Title1(
                temp!,
                isLight: true,
              ),
              BodyText4(explanation!)
            ],
          ),
        ),
      );

  Container dateBox({String? data}) => Container(
        // margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(40)),
        child: AppPaddings.smallPadding(
          child: BodyText4(
            data!,
            isDark: true,
            isBold: true,
          ),
        ),
      );

  Container featureField({required int index}) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10, color: AppColors.palePurple)],
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20)),
      child: AppPaddings.mediumPadding(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            AppData.days[index].features!.length,
            (index) => feature(
                icon: AppData.days[index].features![index].icon,
                value: AppData.days[index].features![index].value,
                name: AppData.days[index].features![index].name),
          ),
        ),
      ),
    );
  }

  Widget feature({IconData? icon, String? value, String? name}) =>
      AppPaddings.smallPadding2(
        child: Column(
          children: [
            Icon(icon, size: 28, color: AppColors.primary),
            BodyText2(value!),
            BodyText5(name!)
          ],
        ),
      );

  Widget hourlyWeather({String? hour, String? image, String? temp}) => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppPaddings.smallPadding2(),
          Container(
            decoration: BoxDecoration(
                // color: AppColors.primary,
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      AppColors.palePurple,
                      AppColors.primary,
                    ]),
                borderRadius: BorderRadius.circular(25)),
            child: AppPaddings.smallPadding(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BodyText3(hour!),
                  WeatherImage(image!),
                  Title1(temp!, size: TextSize.small, isLight: true)
                ],
              ),
            ),
          ),
        ],
      );
}
