import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final void Function()? press;

  const SocialIcon({Key? key, required this.iconSrc, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(border: Border.all(width: 2, color: kPrimaryLightColor), shape: BoxShape.circle),
        child: SvgPicture.asset(iconSrc, width: 20, height: 20),
      ),
    );
  }
}
