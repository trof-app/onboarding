import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final onboardingPagesList = [
    PageModel(
      imageWidget: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/facebook.png')))),
      title: 'SECURED BACKUP',
      info: "Keep your files in closed safe so you can't lose them",
    ),
    PageModel(
      imageWidget: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/facebook.png')))),
      title: 'CHANGE AND RISE',
      info: 'Give others access to any file or folder you choose',
    ),
    PageModel(
      imageWidget: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/facebook.png')))),
      title: 'EASY ACCESS',
      info: 'Reach your files anytime from any devices anywhere',
    ),
    PageModel(
      imageWidget: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/facebook.png')))),
      title: 'SHARE AND SHINE',
      info: 'Give others access to any file or folder you choose',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
            proceedButtonRoute: (context) {
              return Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
                (route) => false,
              );
            },
            proceedButtonText: 'Sign Up'),
        pages: onboardingPagesList,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.line(
            lineDesign: LineDesign(
              lineType: DesignType.line_uniform,
            ),
          ),
        ),
      ),
    );
  }
}
