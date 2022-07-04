import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/const/app_colors.dart';

class Title1 extends StatelessWidget {
  const Title1(
    this.data, {
    Key? key,
    this.isLight = false,
    this.isBold = false,
    this.size = TextSize.large,
  }) : super(key: key);
  final String data;
  final bool isLight;
  final bool isBold;
  final TextSize size;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.nunitoSans(
          color: isLight ? AppColors.white : AppColors.black,
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w900,
          fontSize: size == TextSize.large
              ? 72
              : size == TextSize.medium
                  ? 36
                  : 18),
    );
  }
}

enum TextSize { large, medium, small }
