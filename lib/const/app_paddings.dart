import 'package:flutter/material.dart';

class AppPaddings {
  static Padding pagePadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(40),
        child: child,
      );
  static Padding boxPadding({Widget? child}) => Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: child,
      );

  static Padding smallPadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(15),
        child: child,
      );
  static Padding smallPadding2({Widget? child}) => Padding(
        padding: EdgeInsets.all(8),
        child: child,
      );
  static Padding minPadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(4),
        child: child,
      );

  static Padding symmetricPadding({Widget? child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: child,
      );

  static Padding mediumPadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(20),
        child: child,
      );

  static Padding specialPadding({Widget? child}) => Padding(
        padding: EdgeInsets.only(right: 30, left: 30, top: 25, bottom: 25),
        child: child,
      );
}
