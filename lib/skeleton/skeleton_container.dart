import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';


class SkeletonContainer extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  SkeletonContainer({
    required this.width,
    required this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });

  @override
  Widget build(BuildContext context){

    return SkeletonAnimation(
      child: Container(
        decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: borderRadius,
      ),
      width: width,
      height: height,
      ),
    );
  }
}