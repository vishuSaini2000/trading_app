import 'package:flutter/material.dart';
import 'package:trading_app/screens/components/balance_container.dart';
import 'package:trading_app/screens/components/debit_credit_containers.dart';
import 'package:trading_app/screens/components/user_profile_row.dart';

class UserProfileTransactionContainer extends StatelessWidget {
  const UserProfileTransactionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SizedBox(
      height: 400,
      width: double.infinity,
      child:  Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UserProfileRow(),
            BalanceContainer(),
            DebitCreditContainers(),
          ],
        ),
      ),
    );
  }
}
