import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '/consts/consts.dart';

// This File includes the base shimmer blocks

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer(this.width, this.height, {super.key});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: AppSizes.newSize(width),
        height: AppSizes.newSize(height),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey.withOpacity(.4),
        ),
      ),
    );
  }
}

class ShimmerCircle extends StatelessWidget {
  const ShimmerCircle(this.radius, {super.key});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: AppSizes.newSize(radius),
        height: AppSizes.newSize(radius),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.withOpacity(.4),
        ),
      ),
    );
  }
}
