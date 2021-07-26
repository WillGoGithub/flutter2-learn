import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final void Function() tap;
  const SocialIcon({
    Key? key,
    required this.iconSrc,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey.shade300),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
