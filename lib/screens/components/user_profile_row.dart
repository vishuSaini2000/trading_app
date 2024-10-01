import 'package:flutter/material.dart';
import 'package:trading_app/constants/color_constants.dart';
import 'package:trading_app/constants/image_constants.dart';
import 'package:trading_app/widgets/common/custom_text_widget.dart';

class UserProfileRow extends StatelessWidget {
  const UserProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // CircleAvatar , Text: ( Welcome & Name ) & Notification Icon
        CircleAvatar(
          backgroundImage: AssetImage(profileAvatarBg),
          maxRadius: 25,
          minRadius: 25,
        ),
        const Column(
          // Welcome & Name Text
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: 'Welcome Back',
              fontWeight: FontWeight.normal,
              fontColor: appWhite,
              fontSize: 15,
            ),
            CustomText(
              text: 'Hello, Rabecca !',
              fontColor: appWhite,
              fontSize: 20,
            )
          ],
        ),
        // Nofication Icon
        const SizedBox(
          width: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              color: appTransparentWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            height: 35,
            width: 35,
            child: const Icon(
              Icons.notification_add,
              color: appWhite,
            ),
          ),
        )
      ],
    );
  }
}
