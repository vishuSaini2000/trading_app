import 'package:flutter/material.dart';
import 'package:trading_app/constants/color_constants.dart';
import 'package:trading_app/screens/components/categories_activity_transfer_container.dart';
import 'package:trading_app/screens/components/custom_bottom_navigation_bar.dart';
import 'package:trading_app/screens/components/user_profile_transaction_container.dart';

class MyTradingApp extends StatelessWidget {
  const MyTradingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: appPurple,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserProfileTransactionContainer(),
              CategoriesActivityTransferContainer(),
            ],
          ),
          bottomNavigationBar:CustomBottomNavigationBar() ,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}