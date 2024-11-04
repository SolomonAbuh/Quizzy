import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizzy/gen/assets.gen.dart';
import 'package:quizzy/src/core/strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                height: 6,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: 6,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Color(0XFF855AFF),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 480,
              child: PageView(
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.onboardPicOne,
                        height: 300,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppStrings.welcomeMessage,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        AppStrings.exploreQuizzes,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        Assets.svg.onboardPicTwo,
                        height: 300,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppStrings.challengeYourself,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        AppStrings.customizeQuiz,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(double.infinity, 55),
                backgroundColor: Color(0XFF855AFF),
              ),
              onPressed: () {},
              child: Text(
                AppStrings.next,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(AppStrings.skip),
          )
        ]),
      ),
    );
  }
}
