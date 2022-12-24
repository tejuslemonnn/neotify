import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neotify/gen/assets.gen.dart';
import 'package:neotify/utils/AppColors.dart';
import 'package:neotify/utils/AppValues.dart';
import 'package:neotify/utils/custom_outline.dart';
import 'package:neotify/widgets/grenn_blur.dart';
import 'package:neotify/widgets/pink_blur.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      extendBody: true,
      body: SizedBox(
        width: AppValues.screenWidth(context),
        height: AppValues.screenHeight(context),
        child: Stack(
          children: [
            GreenBlur(
              right: -100,
              top: AppValues.screenHeight(context) * 0.3,
              widthBlur: 200,
              heightBlur: 200,
            ),
            PinkBlur(
              left: -90,
              top: AppValues.screenHeight(context) * 0.1,
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppValues.screenHeight(context) * 0.07,
                  ),
                  CustomOutLine(
                    strokeWidth: 4,
                    radius: AppValues.screenWidth(context) * 0.8,
                    width: AppValues.screenWidth(context) * 0.8,
                    height: AppValues.screenWidth(context) * 0.8,
                    padding: const EdgeInsets.all(6),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.pink,
                          AppColors.pink.withOpacity(0),
                          AppColors.lightGreen.withOpacity(0.1),
                          AppColors.lightGreen
                        ],
                        stops: [
                          0.2,
                          0.4,
                          0.6,
                          1
                        ]),
                    child: Transform.scale(
                      scaleX: -1,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter,
                            image: AssetImage(
                              Assets.images.charliePuth.path,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppValues.screenHeight(context) * 0.07),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Listen Your Favorite Song",
                        style: TextStyle(
                          color: AppColors.whiteColor.withOpacity(0.85),
                          fontSize:
                              AppValues.screenHeight(context) <= 667 ? 18 : 34,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppValues.screenHeight(context) * 0.05),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Download and listen offline wherever you are",
                        style: TextStyle(
                          color: AppColors.whiteColor.withOpacity(0.85),
                          fontSize:
                              AppValues.screenHeight(context) <= 667 ? 12 : 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppValues.screenHeight(context) * 0.03),
                  CustomOutLine(
                    strokeWidth: 3,
                    radius: 20,
                    padding: const EdgeInsets.all(3),
                    width: 160,
                    height: 38,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AppColors.pink, AppColors.lightGreen],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.pink.withOpacity(0.5),
                            AppColors.lightGreen.withOpacity(0.5)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppValues.screenHeight(context) * 0.03),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil('/home', (route) => false),
                    child: CustomOutLine(
                      strokeWidth: 3,
                      radius: 20,
                      padding: const EdgeInsets.all(3),
                      width: 160,
                      height: 38,
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [AppColors.pink, AppColors.lightGreen],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.pink.withOpacity(0.5),
                              AppColors.lightGreen.withOpacity(0.5)
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          height: 7,
                          width: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == 0
                                ? AppColors.lightGreen
                                : AppColors.whiteColor.withOpacity(0.2),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: AppValues.screenHeight(context) * 0.03,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
