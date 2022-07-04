import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/const/app_colors.dart';

class Title2 extends StatelessWidget {
  const Title2(this.data, {Key? key, this.isDark = false}) : super(key: key);
  final String data;
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.nunitoSans(
          color: isDark ? AppColors.black : AppColors.white,
          fontSize: 24,
          fontWeight: FontWeight.w800),
    );
  }
}
