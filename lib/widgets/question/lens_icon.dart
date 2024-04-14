import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LensIcon extends StatelessWidget {
  const LensIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Container(
            width: 108,
            height: 108,
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
          ),
        ),
        Align(
          child: Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(top: 4),
            decoration: const BoxDecoration(
              color: AppColors.gray,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                'assets/images/lens.svg',
                width: 60,
                height: 60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
