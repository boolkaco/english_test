import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressBar extends StatelessWidget {
  final int totalSteps;
  final int currentStep;

  const ProgressBar({
    super.key,
    required this.totalSteps,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    final double progress = (totalSteps > 0 && currentStep > 0)
        ? (currentStep / totalSteps).clamp(0.0, 1.0)
        : 0.0;

    final String stepText = '$currentStep/$totalSteps';

    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.blue.withOpacity(0.1),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: SvgPicture.asset(
            'assets/images/pause.svg',
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 32,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.blue.withOpacity(0.1),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 12,
                          decoration: const BoxDecoration(
                            color: AppColors.silver,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 12,
                          width: progress * MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    stepText,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.tiber,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

