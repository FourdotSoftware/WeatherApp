import 'package:flutter/material.dart';

class WeatherImage extends StatelessWidget {
  const WeatherImage(this.image, {Key? key, this.size = ImageSize.small})
      : super(key: key);
  final String image;
  final ImageSize size;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      width: size == ImageSize.big
          ? 230
          : size == ImageSize.large
              ? 135
              : size == ImageSize.medium
                  ? 90
                  : 75,
      height: size == ImageSize.big
          ? 180
          : size == ImageSize.large
              ? 135
              : size == ImageSize.medium
                  ? 90
                  : 75,
    );
  }
}

enum ImageSize { big, medium, large, small }
