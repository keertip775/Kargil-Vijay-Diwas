import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vijay_diwas/views/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static String routeName = '';
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(HomePage());
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
