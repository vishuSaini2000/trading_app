import 'package:flutter/material.dart';
import 'package:trading_app/constants/color_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: appLightPurple,
        border: Border(
          top: BorderSide(
            color: appGrey,
          ),
        ),
      ),
      child:const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home,color:  appPurple),
            Icon(Icons.newspaper,color:  appPurple),
            Icon(Icons.show_chart,color:  appPurple),
            Icon(Icons.settings,color:  appPurple),
          ],
        ),
    );
  }
}
