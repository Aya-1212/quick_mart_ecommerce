import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class SubTextWidget extends StatelessWidget {
  const SubTextWidget({
    super.key,
    required this.leading,
    required this.trailing,
  });
  final String leading;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: getCaption(
            color: Theme.of(context).colorScheme.primary,
            isSemiBold: false,
          ),
        ),
       const Spacer(),
        Flexible(
          child: Text(
            trailing,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: getCaption(
              color: Theme.of(context).colorScheme.primary,
              isSemiBold: false,
            ),
          ),
        ),
      ],
    );
  }
}