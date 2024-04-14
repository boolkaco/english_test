import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DictionaryButton extends StatelessWidget {
  const DictionaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 34),
      color: AppColors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/dictionary.svg',
                ),
                const SizedBox(width: 7),
                Text(
                  'Dictionary',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/images/arrow.svg',
          )
        ],
      ),
    );
  }
}
