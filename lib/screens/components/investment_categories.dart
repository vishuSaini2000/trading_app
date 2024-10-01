import 'package:flutter/material.dart';
import 'package:trading_app/constants/color_constants.dart';
import 'package:trading_app/constants/image_constants.dart';
import 'package:trading_app/widgets/common/category_box_text_container.dart';

class InvestmentCategories extends StatelessWidget {
  const InvestmentCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryBoxTextContainer(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              width: 60,
              height: 60,
              customText: 'Micro-Finance',
              backgroundColor: appYellow,
              backgroundImage: financeContainerBg,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            CategoryBoxTextContainer(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              width: 60,
              height: 60,
              customText: 'Transfer',
              backgroundColor: appPink,
              backgroundImage: transferContainerBg,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            CategoryBoxTextContainer(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              width: 60,
              height: 60,
              customText: 'Invest',
              backgroundColor: appDarkBlue,
              backgroundImage: investContainerBg,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            CategoryBoxTextContainer(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              width: 60,
              height: 60,
              customText: 'Donate',
              backgroundColor: appLightRed,
              backgroundImage: donateContainerBg,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
