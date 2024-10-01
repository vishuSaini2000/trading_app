import 'package:flutter/material.dart';
import 'package:trading_app/widgets/common/custom_text_widget.dart'; // Import your CustomText widget

class CategoryBoxTextContainer extends StatelessWidget {
  final double width;
  final double height;
  final String? backgroundImage;
  final Color? backgroundColor;
  final String customText;
  final double? fontSize;        // Optional font size
  final Color? fontColor;        // Optional font color
  final FontWeight? fontWeight;  // Optional font weight
  final BorderRadius? borderRadius; // Optional border radius
  final EdgeInsetsGeometry? padding; // Optional padding for the container

  const CategoryBoxTextContainer({
    required this.width,
    required this.height,
    this.backgroundImage,
    this.backgroundColor,
    required this.customText,
    this.fontSize,               // Optional font size
    this.fontColor,              // Optional font color
    this.fontWeight,             // Optional font weight
    this.borderRadius,           // Optional border radius
    this.padding,                // Optional padding
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18),
          child: Container(
            width: width,
            height: height,
            padding: padding ?? EdgeInsets.zero, // Use the padding parameter
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.transparent,
              borderRadius: borderRadius ?? BorderRadius.zero, // Use the borderRadius parameter
              image: backgroundImage != null
                  ? DecorationImage(
                      image: AssetImage(backgroundImage!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
        ),
        CustomText(
          text: customText,
          fontSize: fontSize,              // Pass the font size to CustomText
          fontColor: fontColor,            // Pass the font color to CustomText
          fontWeight: fontWeight ?? FontWeight.normal,  // Pass the font weight to CustomText
        ),
      ],
    );
  }
}
