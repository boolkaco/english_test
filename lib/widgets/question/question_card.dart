import 'package:english_test/bloc/app/app_cubit.dart';
import 'package:english_test/models/sentence_model.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:english_test/widgets/question/entry_answer.dart';
import 'package:english_test/widgets/question/fill_sentence.dart';
import 'package:english_test/widgets/question/lens_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionCard extends StatefulWidget {
  final SentenceModel sentence;

  const QuestionCard({super.key, required this.sentence});

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  int? selectedAnswerIndex;

  @override
  void initState() {
    super.initState();
    selectedAnswerIndex = null;
  }

  String _getLetter(int index) {
    return String.fromCharCode('A'.codeUnitAt(0) + index);
  }

  void _handleAnswer(int index) {
    bool isCorrect =
        widget.sentence.answers[index] == widget.sentence.correctAnswer;
    setState(() {
      selectedAnswerIndex = index;
    });

    Future.delayed(const Duration(seconds: 1), () {
      BlocProvider.of<AppCubit>(context).setNextStep(isCorrect);
      setState(() {
        selectedAnswerIndex = null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    List<Widget> entryAnswers = List.generate(
      widget.sentence.answers.length,
      (index) {
        bool? isSelected = selectedAnswerIndex == index;

        return Padding(
          padding: EdgeInsets.only(top: index == 0 ? 0 : 8),
          child: EntryAnswer(
            text: widget.sentence.answers[index],
            letter: _getLetter(index),
            onTap: () => _handleAnswer(index),
            isSelected: isSelected == true &&
                    widget.sentence.answers[index] ==
                        widget.sentence.correctAnswer
                ? true
                : isSelected == true
                    ? false
                    : null,
          ),
        );
      },
    );

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
                      Flexible(
                        child: FillSentence(
                          text: widget.sentence.text,
                          missingWordIndex: widget.sentence.missingWordIndex,
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
                          widget.sentence.hint,
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
                  ...entryAnswers,
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
