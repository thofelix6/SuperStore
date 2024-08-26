import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:superstore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:superstore/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(activeDotColor: dark ? Tcolors.light : Tcolors.dark, dotHeight: 6),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigatorClick,
          count: 3,
        )
    );
  }
}
