import 'package:flutter/material.dart';
import '../main.dart';
import 'splash_screen4.dart';

class SplashScreen3 extends StatelessWidget {
  static const String routeName = '/splash3';

  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: buildSkipButton(context, SplashScreen4.routeName),
              ),
            ),
            Spacer(flex: 2),
            Center(
              child: Image.asset(
                'assets/images/ilustration3.png',
                height: MediaQuery.of(context).size.height * 0.35,
                fit: BoxFit.contain,
              ),
            ),
            Spacer(flex: 1),
            Center(
              child: Column(
                children: [
                  Text(
                    'Explore My Furniture',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We send your best fourniture',
                    style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Spacer(flex: 2),

            Padding(
              padding: EdgeInsets.only(bottom: 25, left: 10, right: 10),
              child: buildContinueButton(context, SplashScreen4.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
