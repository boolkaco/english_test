import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StarsBar extends StatelessWidget {
  final int count;

  const StarsBar({
    Key? key,
    this.count = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> stackChildren = List.generate(count, (index) {
      return Positioned(
        right: index * 30.0,
        top: 0,
        child: SvgPicture.asset('assets/images/star.svg', width: 40, height: 40),
      );
    });

    return SizedBox(
      width: 30.0 * count + 10.0,
      height: 40,
      child: Stack(
        children: stackChildren,
      ),
    );
  }
}
