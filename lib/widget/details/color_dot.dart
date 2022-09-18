import 'package:flutter/material.dart';

import '../../constants.dart';
class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.filcolor,
    required this.isslected,
  }) : super(key: key);
  final Color filcolor;
  final bool isslected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2.5,
      ),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isslected ? kTextLightColor : Colors.transparent)),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: filcolor),
      ),
    );
  }
}
