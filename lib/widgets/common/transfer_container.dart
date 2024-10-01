import 'package:flutter/material.dart';

class TransferContainer extends StatelessWidget {
  final Color? backgroundColor;
  final Column column;
  final EdgeInsetsGeometry? columnPadding;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;

  const TransferContainer({
    super.key,
    this.backgroundColor,
    required this.column,
    this.columnPadding,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.borderRadius,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: borderRadius ?? BorderRadius.zero,
      ),
      child: Padding(
        padding: columnPadding ?? EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: column.children,
        ),
      ),
    );
  }
}
