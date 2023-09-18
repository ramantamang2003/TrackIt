import 'package:demo/LogIn-Signin-Forgot/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: demo_data.length,
                itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Get.to(LoginPage());
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.ease);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(
                            eccentricity: BorderSide.strokeAlignOutside)),
                    child: Text("CONTINUE")),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demo_data = [
  Onboard(
      image: "assets/image/onboarding/expensephoto1.jpg",
      title: "Hello there, Welcome to Budget Buddy",
      description: "All in one mobile finance application"),
  Onboard(
      image: "assets/image/onboarding/expense2.jpg",
      title: "Track your expense everywhere",
      description:
          "Easily manage your daily expense in one click of your hand from anywhere"),
  Onboard(
      image: "assets/image/onboarding/expensephoto3.jpg",
      title: "Securely manage all your accounts",
      description: "No need to worry about all the accounts"),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          image,
          height: 350,
          width: 600,
        ),
        Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: BorderSide.strokeAlignInside),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: BorderSide.strokeAlignCenter,
            fontSize: 15,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
