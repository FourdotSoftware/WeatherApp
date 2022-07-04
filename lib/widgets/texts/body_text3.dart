import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/const/app_colors.dart';

class BodyText3 extends StatelessWidget {
  const BodyText3(this.data, {Key? key, this.isDark = false}) : super(key: key);
  final String data;
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.nunitoSans(
          color: isDark ? AppColors.black : AppColors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600),
    );
  }
}
