import 'package:first___app/2.2%20theme.dart';
import 'package:first___app/main.dart';
import 'package:first___app/routes/routes.dart';
import 'package:first___app/views/widgets/text+utils.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Myapp());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "images/background.png",
              fit: BoxFit.cover,
            )),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(.3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.4),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 270,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 7)),
                  onPressed: () {
                    Get.offNamed(Routes.loginscreen);
                  },
                  child: const TextUtils(
                      color: Colors.white,
                      textdecoration: TextDecoration.underline,
                      text: "Get Start",
                      fontsize: 25,
                      fontweight: FontWeight.normal)),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const TextUtils(
                        color: Colors.white,
                        textdecoration: TextDecoration.none,
                        text: "Don't have an Account?",
                        fontsize: 20,
                        fontweight: FontWeight.normal),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  InkWell(
                      onTap: () {
                        Get.offNamed(Routes.signupscreen);
                      },
                      child: const TextUtils(
                          color: Colors.white,
                          textdecoration: TextDecoration.underline,
                          text: "Sign Up",
                          fontsize: 20,
                          fontweight: FontWeight.normal))
                ],
              )
            ],
          ),
        )
      ],
    )));
  }
}
