import 'package:flutter/material.dart';
import 'package:trading_app/constants/color_constants.dart';
import 'package:trading_app/widgets/common/custom_text_widget.dart';
import 'package:trading_app/widgets/common/transaction_row_container.dart';

class DebitCreditContainers extends StatelessWidget {
  const DebitCreditContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TransactionRowContainer(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            backgroundColor: appBlue,
            rowPadding: EdgeInsets.all(10),
            height: 50,
            width: 180,
            rowWidget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.send,
                  color: appWhite,
                ),
                CustomText(
                  text: 'Send Money',
                  fontSize: 15,
                  fontColor: appWhite,
                  fontWeight: FontWeight.normal,
                )
              ],
            ),
          ),
          TransactionRowContainer(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            backgroundColor: appRed,
            rowPadding: EdgeInsets.all(10),
            height: 50,
            width: 180,
            rowWidget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.request_page,
                  color: appWhite,
                ),
                CustomText(
                  text: 'Request Money',
                  fontSize: 15,
                  fontColor: appWhite,
                  fontWeight: FontWeight.normal,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
