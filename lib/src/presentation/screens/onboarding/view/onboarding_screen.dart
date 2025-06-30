import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtu_pay/src/app/constants/app_colors.dart';
import 'package:virtu_pay/src/app/constants/assets_path/png_assets.dart';
import 'package:virtu_pay/src/app/routes/routes.dart';
import 'package:virtu_pay/src/common/widgets/button/common_button.dart';
import 'package:virtu_pay/src/presentation/screens/onboarding/controller/onboarding_controller.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = Get.find<OnboardingController>();
  final PageController _pageController = PageController();

  final List<OnboardingItem> _pages = [
    OnboardingItem(
      title: 'Generate Instant\nVirtual Cards',
      image: PngAssets.onboardingImageOne,
    ),
    OnboardingItem(
      title: 'Control Spend\nLimits',
      image: PngAssets.onboardingImageTwo,
    ),
    OnboardingItem(
      title: 'Block And Delete\nAnytime',
      image: PngAssets.onboardingImageThree,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  controller.currentPage.value = page;
                },
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(item: _pages[index]);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom:
                    controller.currentPage.value == _pages.length - 1 ? 20 : 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pages.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color:
                          controller.currentPage.value == index
                              ? AppColors.secondary
                              : AppColors.secondaryTwo,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (controller.currentPage.value == 0 ||
                      controller.currentPage.value == 1)
                    CommonButton(
                      onPressed: () {
                        Get.delete<OnboardingController>();
                        Get.toNamed(BaseRoute.signIn);
                      },
                      width: 80,
                      height: 40,
                      text: "Skip",
                      backgroundColor: AppColors.transparent,
                      borderColor: AppColors.textPrimary.withValues(
                        alpha: 0.10,
                      ),
                      borderWidth: 1,
                    ),
                  controller.currentPage.value == _pages.length - 1
                      ? Expanded(
                        child: CommonButton(
                          onPressed: () {
                            Get.delete<OnboardingController>();
                            Get.toNamed(BaseRoute.signIn);
                          },
                          width: double.infinity,
                          height: 50,
                          text: "Continue",
                        ),
                      )
                      : CommonButton(
                        width: 80,
                        height: 40,
                        text: "Next",
                        onPressed: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                ],
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String image;

  OnboardingItem({required this.title, required this.image});
}

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(item.image, height: 300, fit: BoxFit.contain),
        ),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 110),
      ],
    );
  }
}
