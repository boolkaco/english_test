import 'package:english_test/bloc/app/app_cubit.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressBar extends StatelessWidget {
  final int totalSteps;
  final int currentStep;
  final bool isPaused;

  const ProgressBar({
    super.key,
    required this.totalSteps,
    required this.currentStep,
    this.isPaused = false,
  });

  @override
  Widget build(BuildContext context) {
    final String stepText = '$currentStep/$totalSteps';

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (isPaused) {
              BlocProvider.of<AppCubit>(context).resumeTimer();
            } else {
              BlocProvider.of<AppCubit>(context).pauseTimer();
            }
          },
          child: Container(
            width: 32,
            height: 32,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.blue.withOpacity(0.1),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                isPaused ? 'assets/images/play.svg' : 'assets/images/pause.svg',
                width: 16,
                height: 16,
              ),
            ),
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
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double maxWidth = constraints.maxWidth;
                      final double progressWidth =
                          ((currentStep / totalSteps) * maxWidth)
                              .clamp(0.0, maxWidth);

                      return Stack(
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
                              width: progressWidth,
                              decoration: const BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  stepText,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.tiber,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
