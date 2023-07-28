import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../DImensions/dimensions.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<OnboardingItem> _onboardingItems = [
    OnboardingItem(
      title:"Discover All the Best Recipes You Needed!",
      imagePath: "assets/images/chef.jpg",
    ),
    OnboardingItem(
      title:     "Less Talk Eat More!",
      imagePath: "assets/images/2.jpeg",
    ),
    OnboardingItem(
      title:   "Cooking With Fun!",
      imagePath: "assets/images/3.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: Dimensions.height45,horizontal: Dimensions.width20*3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _onboardingItems.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return _buildOnboardingPage(_onboardingItems[index]);
                },
              ),
            ),
            DotsIndicator(

              dotsCount: _onboardingItems.length,
              position: _currentPage,
              decorator: DotsDecorator(
                color: Colors.grey,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.blueAccent
              ),
              onPressed: () {
                // Logic to direct to the homepage after the last onboarding screen
                Navigator.pushReplacementNamed(context, "main");
              },
              child: Text("Get Started",style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height:Dimensions.height45*2),
          ],
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(OnboardingItem item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(item.imagePath, height: Dimensions.height20*10),
        SizedBox(height: Dimensions.height10*3
        ),
        Text(
          item.title,
          style: TextStyle(fontSize: Dimensions.font26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Dimensions.height10*3),
      ],
    );
  }
}

class OnboardingItem {
  final String title;
  final String imagePath;

  OnboardingItem({required this.title, required this.imagePath});
}


