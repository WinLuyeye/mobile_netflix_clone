import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/onboarding.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: const Image(image: AssetImage("assets/images/symbol.png")),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'PRIVACY',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'SING IN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              Onboarding(
                title: 'Unlimited movies, TV shows, and more.',
                subTitle: 'Watch anymhere. Cancel anytime.',
                image: 'assets/images/Image_1.jpg',
              ),
              Onboarding(
                title: 'There is a plan for every fan.',
                subTitle: 'plans starting at \$2.99 /month.',
                image: 'assets/images/Image_2.jpg',
              ),
              Onboarding(
                title: 'Cancel online anytime.',
                subTitle: 'Join today, no raison to wait.',
                image: 'assets/images/Image_3.jpg',
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.only(right: 5),
                      height: 10,
                      width: _currentPage == index ? 30 : 10,
                      decoration: BoxDecoration(
                        color: _currentPage == index ? Colors.red : Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: const Text("Get Started"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
