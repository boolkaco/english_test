import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultIndicator extends StatelessWidget {
  final int score;

  const ResultIndicator({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/images/result.svg'),
        Text(
          score == 0 ? '1' : score.toString(),
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: AppColors.blue
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
