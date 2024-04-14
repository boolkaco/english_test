import 'package:easy_localization/easy_localization.dart';
import 'package:english_test/screens/task_screen.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 160),
          Center(
            child: SvgPicture.asset(
              'assets/images/cap.svg',
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'login_screen.hint',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.tiber.withOpacity(0.4),
                  fontWeight: FontWeight.w600,
                ),
          ).tr(),
          Text(
            'login_screen.title',
            style: Theme.of(context).textTheme.headlineLarge!,
          ).tr(),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Text(
              'login_screen.desc',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColors.tiber.withOpacity(0.8)),
            ).tr(),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TaskScreen()),
                )
              },
              child: Text(
                'login_screen.button',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ).tr(),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
