import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/widgets/complete_orders_list.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/widgets/ongoing_orders_list.dart';

class OrderHistoryView extends StatefulWidget {
  const OrderHistoryView({super.key});

  @override
  State<OrderHistoryView> createState() => _OrderHistoryViewState();
}

class _OrderHistoryViewState extends State<OrderHistoryView> {
  bool isOngoing = true;
@override
  void initState() {
    isOngoing = true;
    super.initState();
  }
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
        title: Text(
          'Order History',
          style: getBodyTwo(context,
              color: Theme.of(context).colorScheme.onSurface, isMedium: true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.h),
                width: double.infinity,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                           if(isOngoing==false){
                            isOngoing = !isOngoing;
                           }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isOngoing
                                ? Theme.of(context).scaffoldBackgroundColor
                                : Theme.of(context).colorScheme.secondary,
                          ),
                          child: Center(
                              child: Text(
                            "Ongoing",
                            style: getButtonTwo(
                                color: Theme.of(context).colorScheme.onSurface),
                          )),
                        ),
                      ),
                    ),
                    const Gap(8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                            setState(() {
                           if(isOngoing==true){
                            isOngoing = !isOngoing;
                           }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isOngoing
                                ? Theme.of(context).colorScheme.secondary
                                : Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Center(
                              child: Text(
                            "Completed",
                            style: getButtonTwo(
                                color: Theme.of(context).colorScheme.onSurface),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(26.h),
               isOngoing?
             const OngoingOrdersList()
              : const CompleteOrdersList() ,
            //  isOngoing
            //  ? const EmptyOngoingOrders() 
            //  : const EmptyCompleteOrders()
            ],
          ),
        ),
      ),
    );
  }
}
