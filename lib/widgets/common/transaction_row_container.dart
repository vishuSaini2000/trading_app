import 'package:flutter/material.dart';

class TransactionRowContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final Row rowWidget;
  final EdgeInsetsGeometry? containerPadding;
  final EdgeInsetsGeometry? rowPadding;
  final BorderRadius? borderRadius; // Optional border radius parameter

  const TransactionRowContainer({
    super.key,
    required this.height,
    required this.width,
    required this.backgroundColor,
    required this.rowWidget,
    this.containerPadding,
    this.rowPadding,
    this.borderRadius, // Add this to the constructor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: containerPadding ?? const EdgeInsets.all(0), // Optional container padding
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius ?? BorderRadius.zero, // Optional border radius
      ),
      child: Padding(
        padding: rowPadding ?? const EdgeInsets.all(0), // Optional row padding
        child: rowWidget,
      ),
    );
  }
}
