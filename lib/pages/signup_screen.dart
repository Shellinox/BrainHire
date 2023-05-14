import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notesbazaar/models/constants.dart';
import 'package:notesbazaar/pages/login_screen.dart';

import '../controller/firebase_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final firebaseController = Get.put(FirebaseController());
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
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
              const SizedBox(height: 30),
              Image.asset(
                "lib/assets/images/signUp.png",
                scale: 8,
              ),
              const SizedBox(height: 40),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: _name,
                decoration: InputDecoration(
                    labelText: "Full name",
                    labelStyle: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontFamily: "Poppins"),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colors().buttonColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colors().buttonColor),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    )),
              ),
              const SizedBox(height: 10),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: _email,
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontFamily: "Poppins"),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colors().buttonColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colors().buttonColor),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    )),
              ),
              const SizedBox(height: 10),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontFamily: "Poppins"),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colors().buttonColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colors().buttonColor),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 187, 58, 48)),
                    )),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Obx() {
                    firebaseController.createUser(
                      _name.text, _email.text, _password.text);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: colors().buttonColor,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  width: double.infinity,
                  height: 50,
                  child: const Center(
                      child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(LoginScreen());
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: colors().buttonColor, fontFamily: "Poppins"),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
