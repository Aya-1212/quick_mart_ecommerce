import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';

TextStyle getHeaderOne({required Color color, required bool isBold}) {
  return TextStyle(
    fontSize: 32.sp,
    fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
    color: color,
  );
}

TextStyle getHeaderTwo(context,{ Color? color, required bool isBold}) {
  return TextStyle(
    fontSize: 24.sp,
    fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
   color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getHeaderThree({required Color color, required bool isBold}) {
  return TextStyle(
    fontSize: 24.sp,
    fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
    color: color,
  );
}

TextStyle getBodyOne(context,{ Color? color, required bool isMedium}) {
  return TextStyle(
    fontSize: 16.sp,
    fontWeight: isMedium ? FontWeight.w500 : FontWeight.w400,
    color: color?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getBodyTwo(context,{ Color? color, required bool isMedium}) {
  return TextStyle(
    fontSize: 14.sp,
    fontWeight: isMedium ? FontWeight.w500 : FontWeight.w400,
    color: color ?? Theme.of(context).colorScheme.primary,
  );
}

TextStyle getCaption({ required Color color, required bool isSemiBold}) {
  return TextStyle(
    fontSize: 14.sp,
    fontWeight: isSemiBold ? FontWeight.w600 : FontWeight.w400,
    color: color ,
  );
}

TextStyle getOverLine({required Color color, required bool isSemiBold}) {
  return TextStyle(
    fontSize: 12.sp,
    fontWeight: isSemiBold ? FontWeight.w600 : FontWeight.w400,
    color: color,
  );
}

TextStyle getButtonOne({
  required Color color,
}) {
  return TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

TextStyle getButtonTwo({
   Color? color,
}) {
  return TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: color ?? GeneralAppColors.white,
  );
}
