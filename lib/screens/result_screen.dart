import 'package:english_test/bloc/app/app_cubit.dart';
import 'package:english_test/theme/app_colors.dart';
import 'package:english_test/widgets/message_box.dart';
import 'package:english_test/widgets/result_indicator.dart';
import 'package:english_test/widgets/stars_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(builder: (context, state) {
      return Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/bg_decoration.png'),
            Positioned.fill(
              top: 260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 310,
                    height: 380,
                    decoration: BoxDecoration(
                      color: AppColors.alabaster,
                      border: Border.all(
                        color: AppColors.black.withOpacity(0.05),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  )
                ],
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 190),
                  const Center(
                    child: MessageBox(),
                  ),
                  Text(
                    'Good job, Sarah!',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Starting reward',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  const SizedBox(height: 12),
                  const StarsBar(),
                  const SizedBox(height: 16),
                  Text(
                    '100 coins',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 262,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 24),
                            Expanded(
                              child: Text(
                                'OK, let\'s go',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w600),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SvgPicture.asset(
                                'assets/images/arrow_right.svg',
                                width: 24,
                                height: 24,
                              ),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 109),
                  Center(
                    child: ResultIndicator(
                      score: state.score,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
