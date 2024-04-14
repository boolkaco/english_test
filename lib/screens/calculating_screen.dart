import 'package:english_test/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalculatingScreen extends StatefulWidget {
  const CalculatingScreen({super.key});

  @override
  State<CalculatingScreen> createState() => _CalculatingScreenState();
}

class _CalculatingScreenState extends State<CalculatingScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ResultScreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 87),
          Text(
            'All done',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 48,
                ),
          ),
          const SizedBox(height: 60),
          Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                'assets/images/done.svg',
                width: 278,
                height: 202,
              ),
            ),
          ),
          const SizedBox(height: 60),
          Text(
            'You almost there!',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.w300),
          ),
          Text(
            'Few more seconds',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(),
          Center(
            child: RotationTransition(
              turns: _controller,
              child: SvgPicture.asset(
                'assets/images/loading.svg',
                width: 50,
                height: 50,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'We are calculating your level ...',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
