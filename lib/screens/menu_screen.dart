import 'package:easy_localization/easy_localization.dart';
import 'package:english_test/consts/menus.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:english_test/widgets/dictionary_button.dart';
import 'package:english_test/widgets/menu_card.dart';
import 'package:english_test/widgets/profile_avatar.dart';
import 'package:english_test/widgets/score_indicator.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final menusList = Menus.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const ProfileAvatar(),
                    const SizedBox(height: 5),
                    Text(
                      'menu_screen.title',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 24,
                              ),
                    ).tr(),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'menu_screen.level',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: AppColors.tiber.withOpacity(0.4),
                            fontWeight: FontWeight.w600,
                          ),
                        ).tr(),
                        const SizedBox(width: 4),
                        Text(
                          'good',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '|',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                            color: AppColors.alto,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'menu_screen.grade',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: AppColors.tiber.withOpacity(0.4),
                            fontWeight: FontWeight.w600,
                          ),
                        ).tr(),
                        const SizedBox(width: 4),
                        Text(
                          '9',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ScoreIndicator(
                          iconUrl: 'assets/images/guard_star.svg',
                          value: '-',
                        ),
                        SizedBox(width: 18),
                        ScoreIndicator(
                          iconUrl: 'assets/images/star.svg',
                          value: '100',
                        ),
                      ],
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 172 / 176,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return MenuCard(
                            bgColor: menusList[index].color,
                            iconUrl: menusList[index].url,
                            label: menusList[index].label,
                            value: menusList[index].value,
                          );
                        },
                      ),
                    ),
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
