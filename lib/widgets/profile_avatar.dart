import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAvatar extends StatelessWidget {
  final int? scores;

  const ProfileAvatar({super.key, this.scores = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/avatar.svg',
          height: 80,
          width: 80,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.white, width: 2),
            ),
            child: Center(
              child: Text(
                scores == 0 ? '1' : scores.toString(),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
