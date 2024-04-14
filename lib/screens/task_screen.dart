import 'package:easy_localization/easy_localization.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:english_test/widgets/dictionary_button.dart';
import 'package:english_test/widgets/progress_bar.dart';
import 'package:english_test/widgets/question/question_card.dart';
import 'package:english_test/widgets/time_bar.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const ProgressBar(totalSteps: 10, currentStep: 2),
                    const SizedBox(height: 16),
                    Text(
                      'task_screen.hint',
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontSize: 14,
                            color: AppColors.tiber.withOpacity(0.4),
                            fontWeight: FontWeight.w600,
                          ),
                    ).tr(),
                    Text(
                      'task_screen.title',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ).tr(),
                    const SizedBox(height: 2),
                    Text(
                      'task_screen.desc',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ).tr(),
                    const SizedBox(height: 17),
                    const Expanded(
                      child: QuestionCard(),
                    ),
                    const SizedBox(height: 16),
                    const TimeBar(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const DictionaryButton(),
          ],
        ),
      ),
    );
  }
}
