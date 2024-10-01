import 'package:flutter/material.dart';
import 'package:trading_app/constants/color_constants.dart';
import 'package:trading_app/widgets/common/custom_text_widget.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: appTransparentWhite),
              height: 150,
              width: 400,
              child: const Padding(
                padding:  EdgeInsets.all(40),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Total Balance',
                      fontWeight: FontWeight.normal,
                      fontColor: appWhite,
                      fontSize: 15,
                    ),
                    CustomText(
                      text: '\$3,756.00',
                      fontWeight: FontWeight.bold,
                      fontColor: appWhite,
                      fontSize: 30,
                    )
                  ],
                ),
              ),
            );
  }
}