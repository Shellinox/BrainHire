import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notesbazaar/controller/splash_controller.dart';
import 'package:notesbazaar/models/constants.dart';

import 'login_screen.dart';

final splashController = Get.put(SplashController());

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    splashController.onReady();
    return Scaffold(
      body: Container(
        color: colors().primaryColor,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("lib/assets/images/note.png", scale: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Brain",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: "Karatina")),
                Text("Hire",
                    style: TextStyle(
                        color: Color(0xFF8D3AEC),
                        fontSize: 50,
                        fontFamily: "Karatina")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your one stop for all your assignment needs",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
