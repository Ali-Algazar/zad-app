import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Text('Splash View Body1')),
        Container(
          height: 85,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xffE5E7EB), width: 1.5),
            ),
          ),
          child: Row(children: [SvgPicture.asset('assets/svg/home_icon.svg')]),
        ),
      ],
    );
  }
}
