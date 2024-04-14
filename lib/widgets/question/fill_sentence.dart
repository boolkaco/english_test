import 'package:flutter/material.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:english_test/widgets/dashed_box.dart';

class FillSentence extends StatelessWidget {
  final String text;
  final int missingWordIndex;
  final double dashWidth;
  final double dashSpace;
  final double dashHeight;
  final double missingWordWidth;
  final double missingWordHeight;

  const FillSentence({
    super.key,
    required this.text,
    required this.missingWordIndex,
    this.dashWidth = 4.0,
    this.dashSpace = 3.0,
    this.dashHeight = 1.0,
    this.missingWordWidth =
        100.0,
    this.missingWordHeight =
        30.0,
  });

  @override
  Widget build(BuildContext context) {
    List<String> words = text.split(' ');
    List<InlineSpan> spans = [];

    for (int i = 0; i < words.length; i++) {
      if (i == missingWordIndex) {
        spans.add(
          WidgetSpan(
            child: DashedBox(
              color: AppColors.blue.withOpacity(0.5),
              fillColor: AppColors.blue.withOpacity(0.05),
              dashWidth: dashWidth,
              dashSpace: dashSpace,
              strokeWidth: dashHeight,
              child: SizedBox(
                width: missingWordWidth,
                height: missingWordHeight,
              ),
            ),
            alignment: PlaceholderAlignment.middle,
          ),
        );
        spans.add(const TextSpan(text: " "));
      } else {
        spans.add(TextSpan(text: '${words[i]} '));
      }
    }

    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w300,
            height: 2
        ),
        children: spans,
      ),
    );
  }
}
