import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({
    super.key,
    required this.onTap,
    required this.preSvg,
    required this.text,
    this.trailingIcon,
    required this.isCompleted,
  });

  final Function() onTap;
  final String preSvg;
  final String text;
  final Widget? trailingIcon;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: isCompleted
          ? null
          : Text(
              "please complete this section",
              style: getCaption(color: Colors.red, isSemiBold: false),
            ),
      onTap: onTap,
      leading: SvgPicture.asset(
        preSvg,
        width: 24.w,
        height: 24.h,
        colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.primary, BlendMode.srcIn),
      ),
      title: Text(
        text,
        style: getBodyTwo(context,
            color: Theme.of(context).colorScheme.primary, isMedium: true),
      ),
      trailing: trailingIcon ??
          SvgPicture.asset(
            AppSvgs.arrow,
            height: 32.h,
            width: 32.w,
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary, BlendMode.srcIn),
          ),
    );
  }
}
