import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboarding_liquid/pages.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(

            pages: OnboardingPages().getPages(),
            enableSideReveal: true,
            positionSlideIcon: 0.5,
            slideIconWidget:  Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.white,
            ) ,

            waveType: WaveType.liquidReveal,
          ),

        ],
      ),
    );
  }
}
