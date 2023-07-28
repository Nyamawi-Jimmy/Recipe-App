import 'package:flutter/material.dart';
import 'package:recipe/Pages/popular_description.dart';
import 'package:recipe/widgets/FoodDetailsPopular.dart';
import 'DImensions/dimensions.dart';
import 'Pages/HomePage.dart';
import 'Pages/mainlayout.dart';
import 'Pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          bottomNavigationBarTheme:BottomNavigationBarThemeData(
              backgroundColor:Colors.black,
              selectedItemColor: Colors.yellow.shade800,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.grey.shade500,
              elevation: 10,
              type: BottomNavigationBarType.fixed
          )
      ),
      initialRoute: "main",
      routes: {
        //"home":(context)=> HomePage(),
        "main":(context)=> MainLayout(),
        "boarding":(context)=> OnboardingScreen(),



      },
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Center(
          child: Container(
            color: Colors.green,
            height: 100,
            width: 80,
          ),
      ),
    );
  }
}
