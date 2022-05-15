import 'dart:ui';

import 'package:first___app/2.2%20theme.dart';
import 'package:first___app/logic/controller/controller.dart';
import 'package:first___app/routes/routes.dart';
import 'package:first___app/utils/my_string.dart';
import 'package:first___app/views/widgets/auth/auth%20buttom.dart';
import 'package:first___app/views/widgets/auth/text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/text+utils.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  final TextEditingController emailcontrollers = TextEditingController();
  final TextEditingController passwordcontrollers = TextEditingController();
  final formkeys = GlobalKey<FormState>();
  final cont = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Form(
                    key: formkeys,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            TextUtils(
                                color: mainColor,
                                textdecoration: TextDecoration.none,
                                text: "LOG",
                                fontsize: 28,
                                fontweight: FontWeight.w500),
                            SizedBox(
                              width: 3,
                            ),
                            TextUtils(
                                color: Colors.black,
                                textdecoration: TextDecoration.none,
                                text: "IN",
                                fontsize: 28,
                                fontweight: FontWeight.w500)
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthTextFormfield(
                          suffixicon: const Text(""),
                          hinttext: "email",
                          validator: (value) {
                            if (!RegExp(validationEmail).hasMatch(value)) {
                              return "Invalid Email";
                            } else {
                              return null;
                            }
                          },
                          prefixicon: Image.asset("images/email.png"),
                          controller: emailcontrollers,
                          obscuretext: false,
                        ),
                        const SizedBox(height: 20),
                        GetBuilder<AuthController>(builder: (co) {
                          return AuthTextFormfield(
                            suffixicon: IconButton(
                                onPressed: () {
                                  co.logchangeobscure();
                                },
                                icon: co.logobscure == false
                                    ? const Icon(
                                        Icons.visibility,
                                        color: Colors.black,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Colors.black,
                                      )),
                            hinttext: "password",
                            validator: (value) {
                              if (value.toString().length <= 6) {
                                return "Invalid Password";
                              } else {
                                return null;
                              }
                            },
                            prefixicon: Image.asset("images/lock.png"),
                            controller: passwordcontrollers,
                            obscuretext: co.logobscure,
                          );
                        }),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.forgetpasswordscreen);
                                },
                                child: const TextUtils(
                                    color: Colors.black,
                                    textdecoration: TextDecoration.none,
                                    text: "Forget Password?",
                                    fontsize: 18,
                                    fontweight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthButtom(
                          text: "LOG IN",
                          onpressed: () {},
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                child: Image.asset(
                              "images/facebook.png",
                            )),
                            const SizedBox(width: 10),
                            InkWell(
                              child: Image.asset("images/google.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                decoration: const BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ADon't have an Account? ? ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.signupscreen);
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
