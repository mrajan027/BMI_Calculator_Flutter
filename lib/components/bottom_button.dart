import 'package:flutter/material.dart';
import '../constants.dart';

class BottomWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String? buttonText;
  BottomWidget({@required this.buttonText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            "$buttonText ",
            style: kLargeButtonTextstyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}