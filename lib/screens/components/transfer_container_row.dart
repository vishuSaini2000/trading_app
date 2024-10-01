import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trading_app/constants/color_constants.dart';
import 'package:trading_app/screens/components/recent_activity_view_all_text.dart';
import 'package:trading_app/widgets/common/custom_text_widget.dart';
import 'package:trading_app/widgets/common/transfer_container.dart';

class TransferContainerRow extends StatelessWidget {
  const TransferContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(10),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TransferContainer(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            backgroundColor: appLightPurple,
            width: 190,
            height: 150,
              column: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Padding(
                 padding: EdgeInsets.all(13),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Transfer',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      CustomText(
                        text: 'Savings',
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ],
                  ),
               ),
              SizedBox(height: 40,),
              CustomRow(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        CustomText(text: '\$25,221'),
                        CustomText(text: 'Confirmed',color: appPurple,fontSize: 10)
                      ])
            ],
          )),
          TransferContainer(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            backgroundColor: appLightPurple,
            width: 190,
            height: 150,
              column: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Padding(
                 padding: EdgeInsets.all(13),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Transfer',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      CustomText(
                        text: 'Donation',
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ],
                  ),
               ),
              SizedBox(height: 40,),
              CustomRow(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        CustomText(text: '\$25,221'),
                        CustomText(text: 'Pending',color: appLightRed,fontSize: 10)
                      ])
            ],
          ))
        ],
      ),
    );
  }
}
