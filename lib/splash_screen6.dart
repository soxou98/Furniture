import 'package:flutter/material.dart';
import '../main.dart';
import 'splash_screen4.dart';

class SplashScreen6 extends StatelessWidget {
  static const String routeName = '/splash6';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Image.asset(
                'assets/images/register.png',
                height: MediaQuery.of(context).size.height * 0.25,
                fit: BoxFit.contain,
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
