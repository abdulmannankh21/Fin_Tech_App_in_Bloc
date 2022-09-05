import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect {
  static Widget cardShimmer(
      {required Size size, int cardCount = 3, bool autoPlay = true}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.4),
      highlightColor: Colors.grey.withOpacity(0.7),
      child: CarouselSlider.builder(
        itemCount: cardCount,
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: autoPlay,
          aspectRatio: 1.8,
          onPageChanged: (index, reason) {},
        ),
        itemBuilder: (context, index, int) {
          return Container(
            height: size.height * 0.2,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.cyan.withOpacity(0.4),
              borderRadius: BorderRadius.circular(8.0),
            ),
          );
        },
      ),
    );
  }
}
