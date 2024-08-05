import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/services/app_local_storage.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    searchController.text = "";
    super.initState();
  }

  var searchController = TextEditingController();
  List<String> searchList = ["aya", "rady", "abdelaziz"];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppLocalStorage.getCachedUserData("isDark")
                        ? AppSvgs.logoDark
                        : AppSvgs.logo,
                    height: 32.h,
                    width: 104.w,
                    fit: BoxFit.fill,
                  ),
                  const Spacer(), //Theme.of(context).colorScheme.onSurface
                  IconButton(
                    onPressed: () {
                      popFrom(context);
                    },
                    icon: SvgPicture.asset(
                     AppSvgs.pop,
                      height: 32.h,
                      width: 32.w,
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
              Gap(16.h),
              Row(
                children: [
                  SvgPicture.asset(
                    AppSvgs.search,
                    height: 34.h,
                    width: 34.w,
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                  ),
                  Gap(10.w),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onSurface,
                              ))),
                      onSubmitted: (search) {
                        if (search != "" && !searchList.contains(search)) {
                          searchList.add(search);
                        }
                      },
                    ),
                  ),
                  Gap(10.w),
                  GestureDetector(
                    onTap: () {
                      showFilterationModelButtonSheet(context);
                    },
                    child: SvgPicture.asset(
                      AppSvgs.filter,
                      height: 24.h,
                      width: 24.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Gap(24.h),
//searchController.text==""?
              Text(
                "RECENT SEARCH",
                style: getCaption(
                  color: Theme.of(context).colorScheme.onSecondary,
                  isSemiBold: true,
                ),
              ),
              Expanded(
                  child: ListView.separated(
                itemCount: searchList.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          searchController.text = searchList[index];
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            searchList[index],
                            style: getBodyTwo(
                              context,
                              isMedium: true,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            AppSvgs.send,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.tertiary,
                                BlendMode.srcIn),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ))
              ///////////////
            ],
          ),
        ),
      ),
    );
  }

  showFilterationModelButtonSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return Container(
            height: 388.h,
            padding: EdgeInsets.all(15.h),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(25),
              ),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Filter",
                  style: getBodyOne(
                    context,
                    isMedium: true,
                  ),
                ),
                Gap(16.h),
                ListTile(
                  leading: SvgPicture.asset(
                    isSelected ? AppSvgs.checkbox : AppSvgs.checkboxDone,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurface,
                        BlendMode.srcIn),
                  ),
                  title: Text(
                    filterationLabel[0],
                    style: getBodyOne(
                      context,
                      isMedium: true,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (isSelected != false) {
                        isSelected = !isSelected;
                      }
                    });
                  },
                ),
                const Divider(),
                ListTile(
                  leading: SvgPicture.asset(
                    isSelected ? AppSvgs.checkboxDone : AppSvgs.checkbox,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurface,
                        BlendMode.srcIn),
                  ),
                  title: Text(
                    filterationLabel[1],
                    style: getBodyOne(
                      context,
                      isMedium: true,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (isSelected != true) {
                        isSelected = !isSelected;
                      }
                    });
                  },
                ),
               const Divider(
                ),
                Gap(24.h),
                Center(
                  child: CustomElevatedButton(
                    child: Text(
                      "Apply",
                      style: getButtonTwo(),
                    ),
                    onTap: () {
                      //false--->hight to low
                      //true--->low to high
                    },
                  ),
                ),
                Gap(8.h),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<String> filterationLabel = [
  "Price From High To Low",
  "Price From Low To High",
];
