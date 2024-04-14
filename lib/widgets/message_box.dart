import 'package:easy_localization/easy_localization.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/images/message.svg'),
        Positioned.fill(
          top: 20,
          child: Column(
            children: [
              Text(
                'starting_level',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: AppColors.white),
                textAlign: TextAlign.center,
              ).tr(),
              Text(
                'Good',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
