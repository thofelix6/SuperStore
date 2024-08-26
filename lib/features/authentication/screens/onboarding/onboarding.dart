import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:superstore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:superstore/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:superstore/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:superstore/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:superstore/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:superstore/utils/constants/image_strings.dart';
import 'package:superstore/utils/constants/text_strings.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: Timages.onBoardingImage1,
                title: TTexts.onBoardingTitles1,
                subtitle: TTexts.onBoardingSubTitles1,
              ),
              onBoardingPage(
                image: Timages.onBoardingImage2,
                title: TTexts.onBoardingTitles2,
                subtitle: TTexts.onBoardingSubTitles2,
              ),
              onBoardingPage(
                image: Timages.onBoardingImage3,
                title: TTexts.onBoardingTitles3,
                subtitle: TTexts.onBoardingSubTitles3,
              )
            ],
          ),
          
          ///Skip button
          const onBoardingSkip(),
          
          ///Dot navigation SmoothPageIndicator
          const onBoardingDotNavigation(),

          ///circular button
          const onBoardingNextButton(),
        ],
      ),
    );
  }
}




