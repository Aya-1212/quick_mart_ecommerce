import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/email_validate.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class EmailConfirmationView extends StatelessWidget {
  EmailConfirmationView({super.key});

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              popFrom(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 28,
            ),
          ),
          centerTitle: true,
          title: Text(
            "Forget password",
            style: getBodyTwo(context,color: GeneralAppColors.black, isMedium: true),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email ConFirmation",
                    style: getHeaderTwo(context,
                        color: GeneralAppColors.black, isBold: true),
                  ),
                  Text(
                    "Enter your email address for verification.",
                    style: getBodyTwo(context,
                        color: LightThemeColors.grey_150, isMedium: true),
                  ),
                  Gap(24.h),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "Email ",
                          style: getBodyTwo(context,
                              color: GeneralAppColors.black, isMedium: true)),
                      TextSpan(
                          text: "*",
                          style: getBodyTwo(context,color: Colors.red, isMedium: true)),
                    ]),
                  ),
                  Gap(8.h),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Email",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 3),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "this field is required";
                      } else if (emailValidate(email: value)) {
                        return "you entered invalid email";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.done,
                  ),
                  Gap(24.h),
                  CustomElevatedButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    width: double.infinity,
                    child: Text(
                      "Send",
                      style: getButtonTwo(
                       
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
