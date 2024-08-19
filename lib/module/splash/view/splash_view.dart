import 'package:flutter/material.dart';
import 'package:doa_harian/core.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  Widget build(context, SplashController controller) {
    controller.view = this;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.7),
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "assets/icons/logo.png",
              height: 120.0,
              fit: BoxFit.fill,
            ).animate().scale(),
            const Spacer(),
            Text(
              "PT. TERAS MEDIA PATI",
              style: TextStyle(
                fontSize: 12.0,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
