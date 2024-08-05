import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

class UserInformationView extends StatelessWidget {
  const UserInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("user information"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 75.h,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  child: CircleAvatar(
                    radius: 65.h,
                    backgroundColor: GeneralAppColors.white,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_sharp,
                          size: 25,
                          color: GeneralAppColors.cyan,
                        )),
                  ),
                ),
              ],
            ),
            Gap(16.h),
            ListView.builder(
              shrinkWrap: true,
              itemCount: labels.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        var controller =
                            TextEditingController(text: profileText[index]);
                        return SimpleDialog(
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          children: [
                            Form(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      labels[index],
                                      style: getBodyOne(
                                        context,
                                        isMedium: true,
                                      ),
                                    ),
                                    Gap(16.h),
                                    TextFormField(
                                      controller: controller,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "this feild is required";
                                        }
                                        return null;
                                      },
                                    ),
                                    Gap(24.h),
                                    CustomElevatedButton(
                                      width: double.infinity,
                                      child: Text(
                                        "update",
                                        style: getBodyOne(
                                          context,
                                          isMedium: true,
                                          color: GeneralAppColors.white,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Row(
                      children: [
                        Text(
                          labels[index],
                          style: getBodyOne(context, isMedium: true),
                        ),
                        const Spacer(),
                        Expanded(
                          child: Text(
                            profileText[index],
                            style: getBodyOne(context, isMedium: true),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<String> labels = [
  "name",
  "phone",
  "age",
  "city",
  "address",
];

List<String> profileText = [
  "aya rady abdelaziz mahmoud elkady aya rady abdelaziz mahmoud elkady",
  "01111111111",
  "30",
  "cairo",
  "nasr city",
];
