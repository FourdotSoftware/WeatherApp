import 'package:flutter/material.dart';
import 'package:weather_app/app_data.dart';
import 'package:weather_app/const/app_colors.dart';
import 'package:weather_app/const/app_images.dart';
import 'package:weather_app/const/app_paddings.dart';
import 'package:weather_app/const/app_texts.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/widgets/images/weather_image.dart';
import 'package:weather_app/widgets/texts/body_text1.dart';
import 'package:weather_app/widgets/texts/body_text4.dart';
import 'package:weather_app/widgets/texts/title1.dart';
import 'package:weather_app/widgets/texts/title2.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primary,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.palePurple,
                AppColors.primary,
                AppColors.palePurple,
                AppColors.primary,
              ]),
        ),
        child: Column(
          children: [
            detailPageAppBar(),
            AppPaddings.mediumPadding(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                celciusField(),
              ],
            ),
            Expanded(
              child: AppPaddings.specialPadding(
                child: Stack(
                  children: [
                    AppPaddings.symmetricPadding(
                      child: emptyContainer(),
                    ),
                    Column(
                      children: [
                        Text(""),
                        Expanded(
                          child: futureWeather(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar detailPageAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
        },
        child: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      title: Column(
        children: [
          Title2(AppTexts.todayWeather),
          BodyText4(
            DateTime.now().toString(),
            isBold: true,
          )
        ],
      ),
    );
  }

  Widget celciusField() {
    return Container(
      decoration: BoxDecoration(
          // color: AppColors.palePurple,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                // AppColors.palePurple,
                AppColors.primary,
                AppColors.white30,
              ]),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: AppColors.white, width: 2)
          // border: Border(top: BorderSide(color: Colors.red))
          ),
      child: AppPaddings.mediumPadding(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            WeatherImage(
              AppData.days[0].weatherImage!,
              size: ImageSize.large,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Title1(
                  AppData.days[0].temp!,
                  isLight: true,
                  isBold: true,
                ),
                BodyText4(AppData.days[0].explanation!)
              ],
            )
          ],
        ),
      ),
    );
  }

  Container emptyContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: 100,
      decoration: BoxDecoration(
          color: AppColors.white30,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Row(
        children: [
          Text(""),
        ],
      ),
    );
  }

  Container futureWeather() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppPaddings.specialPadding(
            child: Title1(
              AppTexts.futureWeather,
              size: TextSize.small,
            ),
          ),
          Expanded(
            // height: 400,
            child: SingleChildScrollView(
              child: Column(
                  children: List.generate(
                AppData.days.length,
                (index) => hourlyWeather(
                    image: AppData.days[index].weatherImage,
                    temp: AppData.days[index].temp,
                    day: AppData.days[index].day,
                    date: AppData.days[index].date),
              )),
            ),
          )
        ],
      ),
    );
  }

  Column hourlyWeather(
          {String? image, String? temp, String? day, String? date}) =>
      Column(
        children: [
          AppPaddings.minPadding(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherImage(image!),
              Row(
                children: [
                  Title1(
                    temp!,
                    size: TextSize.medium,
                  ),
                  AppPaddings.minPadding(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BodyText1(
                        day!,
                        isDark: true,
                      ),
                      BodyText1(date!)
                    ],
                  )
                ],
              )
            ],
          ),
          AppPaddings.minPadding(),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            height: 1.5,
            color: AppColors.lightBlueGrey,
            child: Row(
              children: [
                Text("aaa"),
              ],
            ),
          )
        ],
      );
}
