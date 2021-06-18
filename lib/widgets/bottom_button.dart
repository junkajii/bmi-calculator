import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;

  const BottomButton({
    Key? key,
    required this.buttonTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SafeArea(
        child: Container(
          child: Center(
              child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          )),
          color: kBottomContainerColor,
          height: 80.0,
          margin: EdgeInsets.only(top: 16.0),
        ),
      ),
    );
  }
}
