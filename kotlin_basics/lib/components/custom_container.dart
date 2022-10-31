import 'package:flutter/material.dart';
import 'package:kotlin_basics/utilities/constant_styles.dart';

class CustomContainer extends StatelessWidget {
  final String containerTitle;

  const CustomContainer({super.key, required this.containerTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.green[100],
      child: Text(
        containerTitle,
        style: kTitleMainTextStyle,
      ),
    );
  }
}
