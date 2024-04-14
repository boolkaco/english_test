import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:english_test/theme/app_colors.dart';

class EntryAnswer extends StatelessWidget {
  final String text;
  final String letter;
  final VoidCallback onTap;
  final bool? isSelected;

  const EntryAnswer({
    super.key,
    required this.text,
    required this.letter,
    required this.onTap,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isSelected == null
        ? AppColors.white
        : isSelected!
            ? Colors.green
            : Colors.red;

    Color textColor = isSelected == null ? AppColors.blue : Colors.white;

    String iconName = isSelected == null
        ? ''
        : isSelected!
            ? 'assets/images/correct.svg'
            : 'assets/images/wrong.svg';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: backgroundColor,
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
            iconName.isEmpty
                ? Container(
                    height: 24,
                    width: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.blue, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Text(
                      letter,
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  )
                : SvgPicture.asset(
                    iconName,
                  ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.w500,
                    ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
