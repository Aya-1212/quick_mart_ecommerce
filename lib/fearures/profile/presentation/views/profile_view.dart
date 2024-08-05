import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/services/app_local_storage.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/change_password_old_pass_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/order_history_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/privacy_policy_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/terms_and_condition_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/user_information_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/widgets/profile_tile_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool? isDark;
  bool isCompleted = false;
  @override
  void initState() {
    isDark = AppLocalStorage.getCachedUserData("isDark") ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralAppColors.cyan,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  isCompleted
                      ? Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: GeneralAppColors.white,
                            borderRadius: BorderRadius.circular(12),
                            // image:
                          ),
                        )
                      : const SizedBox(),
                  Gap(15.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "name",
                          style: getButtonOne(
                            color: GeneralAppColors.white,
                          ),
                        ),
                        Text(
                          "name@gmail.com",
                          style: getButtonTwo(),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/svg/logout.svg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Gap(24.h),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45)),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Information",
                        style: getCaption(
                            color: Theme.of(context).colorScheme.onSurface,
                            isSemiBold: true),
                      ),
                      Gap(12.h),
                      ProfileTileWidget(
                        isCompleted: isCompleted,
                        onTap: () {
                          pushTo(context,
                              nextScreen: const UserInformationView());
                        },
                        preSvg: AppSvgs.profile,
                        text: "user Information",
                      ),
                      const Divider(),
                      ProfileTileWidget(
                        onTap: () {
                          pushTo(context, nextScreen: const OrderHistoryView());
                        },
                        preSvg:AppSvgs.orders,
                        text: "Order History",
                        isCompleted: true,
                      ),
                      /////////////////////////
                     const Divider(),
                      //////////////////////////////////////////////////////////////////////
                      Gap(24.h),
                      Text(
                        "Support & Information",
                        style: getCaption(
                            color: Theme.of(context).colorScheme.onSurface,
                            isSemiBold: true),
                      ),
                      Gap(12.h),
                      ProfileTileWidget(
                        onTap: () {
                          pushTo(context,
                              nextScreen: const PrivacyPolicyView());
                        },
                        preSvg: "assets/svg/shield-tick.svg",
                        text: "Privacy Policy",
                        isCompleted: true,
                      ),
                      /////////////////////////
                      const Divider(),
                      ProfileTileWidget(
                        onTap: () {
                          pushTo(context,
                              nextScreen: const TermsAndConditionsView());
                        },
                        preSvg: "assets/svg/document-text.svg",
                        text: "Terms and Conditions",
                        isCompleted: true,
                      ),
                      /////////////////////////
                      const Divider(),
                      Gap(24.h),
                      Text(
                        "Account Management",
                        style: getCaption(
                            color: Theme.of(context).colorScheme.onSurface,
                            isSemiBold: true),
                      ),
                      Gap(12.h),
                      ProfileTileWidget(
                        onTap: () {
                          pushTo(context,
                              nextScreen: const ChangePasswordOldPassView());
                        },
                        preSvg: "assets/svg/lock.svg",
                        text: "Change Password",
                        isCompleted: true,
                      ),

                      const Divider(),
                      ProfileTileWidget(
                        onTap: () {},
                        preSvg: "assets/svg/mobile.svg",
                        text: "Dark Theme",
                        trailingIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isDark = !isDark!;
                              AppLocalStorage.cacheUserData("isDark", isDark);
                            });
                          },
                          icon: Icon(
                            isDark! ? Icons.sunny : Icons.dark_mode_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        isCompleted: true,
                      ),
                      /////////////////////////
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
