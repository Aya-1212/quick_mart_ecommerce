import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class BigTextWidget extends StatelessWidget {
  const BigTextWidget({
    super.key,
    required this.leadingText,
    required this.rightText,
  });
  final String leadingText;
  final String rightText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         leadingText ,
          style: getBodyOne(
            context,
            isMedium: true,
          ),
        ),
        Text(
          rightText,
          style: getBodyOne(
            context,
            isMedium: true,
          ),
        ),
      ],
    );
  }
}
