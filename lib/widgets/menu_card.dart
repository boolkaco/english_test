import 'package:english_test/screens/splash_screen.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuCard extends StatelessWidget {
  final String iconUrl;
  final String label;
  final String value;
  final Color bgColor;

  const MenuCard({
    super.key,
    required this.iconUrl,
    required this.bgColor,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SplashScreen()),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                iconUrl,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.mineShaft,
                      ),
                ),
                const SizedBox(width: 6),
                Text(
                  value,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.mineShaft.withOpacity(0.3),
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
