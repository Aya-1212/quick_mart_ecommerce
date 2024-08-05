import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/widgets/checked_out_items.dart';

class CheckoutPreviewItems extends StatelessWidget {
  const CheckoutPreviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        title: const Text('items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return const CheckedOutItems();
                },
                separatorBuilder: (context, index) => Gap(20.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


