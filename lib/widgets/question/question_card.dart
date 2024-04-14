import 'package:english_test/theme/app_colors.dart';
import 'package:english_test/widgets/question/entry_answer.dart';
import 'package:english_test/widgets/question/fill_sentence.dart';
import 'package:english_test/widgets/question/lens_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 52,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            width: screenSize.width,
            decoration: const BoxDecoration(
              color: AppColors.alabaster,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 73),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: SvgPicture.asset(
                          'assets/images/question.svg',
                          width: 18,
                          height: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Flexible(
                        child: FillSentence(
                          text:
                              'What did you buy for Rachel\'s birthday party?',
                          missingWordIndex: 4,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 6),
                    child: Divider(
                      color: AppColors.tiber.withOpacity(0.1),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: SvgPicture.asset(
                          'assets/images/comment.svg',
                          width: 18,
                          height: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        child: Text(
                          'A beautiful pink dress.',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                              ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const EntryAnswer(text: 'What', letter: 'A',),
                  const SizedBox(height: 8),
                  const EntryAnswer(text: 'Why', letter: 'B',),
                  const SizedBox(height: 8),
                  const EntryAnswer(text: 'Where', letter: 'C',),
                  const SizedBox(height: 8),
                  const EntryAnswer(text: 'Who', letter: 'D',),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: LensIcon(),
        ),
      ],
    );
  }
}
