import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.child,
    required this.onTap,
    this.margin,
    this.height,
    this.width,
    this.borderRadius, this.color,
  });

  final Widget child;
  final Function() onTap;
  final double? margin;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height ?? 60.h,
          width: width ?? 160.w,
          padding: const EdgeInsets.all(12),
          margin: EdgeInsets.all(margin ?? 10),
          decoration: BoxDecoration(
           // border: ,
            color:color??  Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(child: child)),
    );
  }
}
