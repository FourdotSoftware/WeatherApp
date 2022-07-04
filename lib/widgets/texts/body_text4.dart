import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/const/app_colors.dart';

class BodyText4 extends StatelessWidget {
  const BodyText4(this.data,
      {Key? key, this.isDark = false, this.isBold = false})
      : super(key: key);
  final String data;
  final bool isDark;
  final bool isBold;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.nunitoSans(
          color: isDark ? AppColors.black : AppColors.white,
          fontSize: 11,
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w900),
    );
  }
}
