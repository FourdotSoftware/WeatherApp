import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/const/app_colors.dart';

class Title3 extends StatelessWidget {
  const Title3(this.data, {Key? key}) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.nunitoSans(
          color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w900),
    );
  }
}
