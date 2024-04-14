import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScoreIndicator extends StatelessWidget {
  final String iconUrl;
  final String value;

  const ScoreIndicator({
    super.key,
    required this.iconUrl,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            width: 60,
            height: 24,
            decoration: const BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: -10,
          top: -3,
          child: SvgPicture.asset(
            iconUrl,
            width: 26,
            height: 30,
          ),
        ),
      ],
    );
  }
}
