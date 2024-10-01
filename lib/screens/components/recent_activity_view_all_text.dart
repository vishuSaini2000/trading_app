import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding; // Optional parameter for padding
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment; // Optional parameter for main axis alignment
  final CrossAxisAlignment? crossAxisAlignment; // Optional parameter for cross axis alignment

  const CustomRow({
    super.key,
    this.width,
    this.height,
    this.padding, // Include padding in the constructor
    required this.children,
    this.mainAxisAlignment, // Include main axis alignment in the constructor
    this.crossAxisAlignment, // Include cross axis alignment in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
        padding: padding ??const  EdgeInsets.all(8.0), // Default padding value
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start, // Default value
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center, // Default value
          children: children,
        ),
      ),
    );
  }
}
