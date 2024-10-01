import 'package:flutter/material.dart';
import 'package:trading_app/constants/color_constants.dart';
import 'package:trading_app/screens/components/recent_activity_view_all_text.dart';
import 'package:trading_app/screens/components/transfer_container_row.dart';
import 'package:trading_app/widgets/common/custom_text_widget.dart';
import 'package:trading_app/screens/components/investment_categories.dart';

class CategoriesActivityTransferContainer extends StatelessWidget {
  const CategoriesActivityTransferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: appWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 414,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomRow(
            padding: EdgeInsets.all(10),
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: 'Just for you',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),

          ]),
          InvestmentCategories(),
          CustomRow(
            padding: EdgeInsets.all(10),
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Recent Activity',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              CustomText(text: 'View All',
              fontSize: 15,
              color: appPurple,)
            ],
          ),
       TransferContainerRow(),
        ],
      ),
    );
  }
}
