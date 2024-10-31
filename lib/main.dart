import 'package:flutter/material.dart';
import 'splash_screen1.dart';
import 'splash_screen4.dart';
import 'splash_screen2.dart';
import 'splash_screen3.dart';
import 'splash_screen5.dart';
import 'home_page.dart';
import 'splash_screen6.dart';
import 'home_table.dart';
import 'detail1.dart';
import 'checkout.dart';
import 'discount.dart';
import 'profile.dart';
import 'detail2.dart';
import 'checkout2.dart';
import 'choosepayment.dart';
import 'paymentcheck.dart';


void main() {
  runApp(MyFurnitureApp());
}

class MyFurnitureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Furniture App',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen1.routeName,
      routes: {
        SplashScreen1.routeName: (context) => SplashScreen1(),
        SplashScreen2.routeName: (context) => SplashScreen2(),
        SplashScreen3.routeName: (context) => SplashScreen3(),
        SplashScreen4.routeName: (context) => SplashScreen4(),
        SplashScreen5.routeName: (context) => SplashScreen5(),
        HomePage.routeName: (context) => HomePage(), 
        SplashScreen6.routeName: (context) => SplashScreen6(),
        HomeTable.routeName: (context) => HomeTable(),
        Detail.routeName: (context) => Detail(),
        Profile.routeName: (context) => Profile(),
        Discount.routeName: (context) => Discount(),
        Checkout.routeName: (context) => Checkout(),
        Checkout2.routeName: (context) => Checkout2(),
        Details.routeName: (context) => Details(),
        Payment.routeName: (context) => Payment(),
        PaymentCheck.routeName: (context) => PaymentCheck(),
      },
    );
  }
}


Widget buildSkipButton(BuildContext context, String targetPage) {
  return TextButton(
    onPressed: () {
      Navigator.pushReplacementNamed(context, targetPage);
    },
    child: Text(
      'Skip',
      style: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );
}


Widget buildContinueButton(BuildContext context, String targetPage) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, targetPage);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        padding: EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        'Continue',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
  );
}
