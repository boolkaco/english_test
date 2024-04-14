import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EntryAnswer extends StatelessWidget {
  final String text;
  final String letter;

  const EntryAnswer({
    super.key,
    required this.text,
    this.letter = 'B',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 24,
            width: 24,
            padding: const EdgeInsets.only(top: 1),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.blue, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              letter,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppColors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
