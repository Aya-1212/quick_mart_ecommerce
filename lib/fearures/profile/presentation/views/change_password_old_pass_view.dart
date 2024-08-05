import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/change_password_view.dart';

class ChangePasswordOldPassView extends StatefulWidget {
  const ChangePasswordOldPassView({super.key});

  @override
  State<ChangePasswordOldPassView> createState() =>
      _ChangePasswordOldPassViewState();
}

class _ChangePasswordOldPassViewState extends State<ChangePasswordOldPassView> {
  var formKey = GlobalKey<FormState>();
  var oldPassController = TextEditingController();
  bool isVisible1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
        ),
        title: Text(
          'Change Password',
          style: getBodyTwo(context,
              color: Theme.of(context).colorScheme.onSurface, isMedium: true),
        ),
        actions: [
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: "01",
                style: getBodyTwo(context,
                    color: GeneralAppColors.cyan, isMedium: true),
              ),
              TextSpan(
                text: "/02",
                style: getBodyTwo(context,
                    color: Theme.of(context).colorScheme.onSurface,
                    isMedium: true),
              ),
            ]),
          ),
          const Gap(10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Old Password',
                  style: getHeaderTwo(context, isBold: true),
                ),
                Gap(8.h),
                Text(
                  'Enter old password to change the password.',
                  style: getBodyTwo(context, isMedium: false),
                ),
                Gap(16.h),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "Password",
                        style: getBodyTwo(context,
                            color: Theme.of(context).colorScheme.onSurface,
                            isMedium: true)),
                    TextSpan(
                        text: "*",
                        style: getBodyTwo(context,
                            color: Colors.red, isMedium: true)),
                  ]),
                ),
                Gap(8.h),
                TextFormField(
                  // style: getBodyStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible1 = !isVisible1;
                          });
                        },
                        icon: (isVisible1)
                            ? const Icon(Icons.remove_red_eye_outlined)
                            : const Icon(
                                Icons.visibility_off_rounded,
                                color: GeneralAppColors.cyan,
                              )),
                    hintText: 'Current password',
                  ),
                  controller: oldPassController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'this field is required';
                    }
                    return null;
                  },
                  obscureText: isVisible1,
                ),
                ////////////////////////////////////////////////////////////////////////////////////
                Gap(24.h),
                CustomElevatedButton(
                  onTap: () {
                    pushTo(context, nextScreen: const ChangePasswordView());
                    // if (formKey.currentState!.validate()) {}
                  },
                  width: double.infinity,
                  child: Text(
                    'Continue',
                    style: getButtonTwo(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
