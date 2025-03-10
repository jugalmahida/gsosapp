import 'package:flutter/material.dart';
import 'package:gsos/views/onloading/onloading1.dart';
import 'package:gsos/views/onloading/onloading2.dart';
import 'package:gsos/views/onloading/onloading3.dart';
import 'package:gsos/views/onloading/onloading4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const [
              Onloading1(),
              Onloading2(),
              Onloading3(),
              Onloading4(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: const WormEffect(),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (_currentPage > 0)
                      TextButton.icon(
                        onPressed: () {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        label: Text(
                          "PREVIOUS",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    if (_currentPage < 3)
                      TextButton.icon(
                        onPressed: () {
                          if (_currentPage < 3) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          }
                        },
                        label: Text(
                          "NEXT",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/loginscreen'),
              child: const Text('Skip'),
            ),
          ),
        ],
      ),
    );
  }
}
