import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/email_validate.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/services/app_local_storage.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/core/widgets/naviagation_bar_view.dart';
import 'package:quick_mart_ecommerce/fearures/authentication/presentation/views/log_in_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var formKey = GlobalKey<FormState>();
  bool? isDark;
  bool isVisible = true;
  @override
  void initState() {
    isDark = AppLocalStorage.getCachedUserData("isDark") ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    isDark!?
                    AppSvgs.logoDark:
                    AppSvgs.logo,
                    width: 104.w,
                    height: 32.h,
                  ),
                  Gap(24.h),
                  Text(
                    "Signup",
                    style: getHeaderTwo(context,
                   isBold: true),
                  ),
                  Row(
                    children: [
                      Text(
                        "Already have an account? ",
                        style: getBodyTwo(context,
                            color:isDark!?DarkThemeColors.grey_150: LightThemeColors.grey_150 ,isMedium: true),
                      ),
                      GestureDetector(
                          onTap: () {
                            pushWithReplacement(
                              context,
                              nextScreen: const LogInView(),
                            );
                          },
                          child: Text(
                            "Login",
                            style: getBodyTwo(context,
                                color: GeneralAppColors.cyan, isMedium: true),
                          )),
                    ],
                  ),
                  Gap(32.h),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "Full Name ",
                          style: getBodyTwo(context,
                          color: Theme.of(context).colorScheme.onSurface,
                               isMedium: true)),
                      TextSpan(
                          text: "*",
                          style: getBodyTwo(context,color: Colors.red, isMedium: true)),
                    ]),
                  ),
                  Gap(8.h),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter your Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "this field is required";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  Gap(16.h),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "Email ",
                          style: getBodyTwo(context,
                          color: Theme.of(context).colorScheme.onSurface,
                              isMedium: true)),
                      TextSpan(
                          text: "*",
                          style: getBodyTwo(context,color: Colors.red, isMedium: true)),
                    ]),
                  ),
                  Gap(8.h),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter your Email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "this field is required";
                      } else if (emailValidate(email: value)) {
                        return "you entered invalid email";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  Gap(16.h),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "Password ",
                          style: getBodyTwo(context,
                          color: Theme.of(context).colorScheme.onSurface,
                             isMedium: true)),
                      TextSpan(
                          text: "*",
                          style: getBodyTwo(context,color: Colors.red, isMedium: true)),
                    ]),
                  ),
                  Gap(8.h),
                  TextFormField(
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            icon: isVisible
                                ? const Icon(
                                    Icons.remove_red_eye_outlined,
                                  
                                  )
                                : const Icon(
                                    Icons.visibility_off_outlined,
                                    color: GeneralAppColors.cyan,
                                  ))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "this field is required";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.done,
                  ),
                  Gap(24.h),
                  CustomElevatedButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        pushAndRemoveUntil(context,
                            nextScreen: const NavigationBarView());
                      }
                    },
                    width: double.infinity,
                    child: Text(
                      "Create Account",
                      style: getButtonTwo(
                      ),
                    ),
                  ),
                  Gap(24.h),
                  Row(
                    children: [
                         const Expanded(
                        child: Divider(),
                      ),
                      const Gap(5),
                      Center(
                        child: Text(
                          "or",
                          style: getBodyTwo(context,
                               color:isDark!? DarkThemeColors.grey_150: LightThemeColors.grey_150, isMedium: true),
                        ),
                      ),
                      const Gap(5),
                        const Expanded(
                        child: Divider(),
                      ),],
                  ),
                  Gap(24.h),
                  CustomElevatedButton(
                    onTap: () {},
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Signup with",
                          style: getButtonTwo(
                          ),
                        ),
                        Gap(8.h),
                        const Icon(
                          Icons.facebook_outlined,
                          color: Colors.blueAccent,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
