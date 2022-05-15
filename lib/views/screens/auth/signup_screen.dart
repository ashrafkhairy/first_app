import 'package:first___app/2.2%20theme.dart';
import 'package:first___app/logic/controller/controller.dart';
import 'package:first___app/routes/routes.dart';
import 'package:first___app/utils/my_string.dart';
import 'package:first___app/views/widgets/auth/auth%20buttom.dart';
import 'package:first___app/views/widgets/auth/text_form_field.dart';
import 'package:first___app/views/widgets/text+utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final controller = Get.put(AuthController());

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
                    key: formkey,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            TextUtils(
                                color: mainColor,
                                textdecoration: TextDecoration.none,
                                text: "SIGN",
                                fontsize: 28,
                                fontweight: FontWeight.w500),
                            SizedBox(
                              width: 3,
                            ),
                            TextUtils(
                                color: Colors.black,
                                textdecoration: TextDecoration.none,
                                text: "UP",
                                fontsize: 28,
                                fontweight: FontWeight.w500)
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthTextFormfield(
                          suffixicon: const Text(""),
                          hinttext: "user name",
                          validator: (Value) {
                            if (Value.toString().length <= 2 ||
                                RegExp(validationName).hasMatch(Value)) {
                              return "Enter Valid Name";
                            } else {
                              return null;
                            }
                          },
                          prefixicon: Image.asset("images/user.png"),
                          controller: namecontroller,
                          obscuretext: false,
                        ),
                        const SizedBox(height: 20),
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
                          controller: emailcontroller,
                          obscuretext: false,
                        ),
                        const SizedBox(height: 20),
                        GetBuilder<AuthController>(builder: (c) {
                          return AuthTextFormfield(
                            suffixicon: IconButton(
                                onPressed: () {
                                  c.changeobscure();
                                },
                                icon: c.obscure == false
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
                            controller: passwordcontroller,
                            obscuretext: c.obscure,
                          );
                        }),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            GetBuilder<AuthController>(
                              builder: ((con) {
                                return InkWell(
                                  onTap: () {
                                    con.changetrue();
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: con.truee
                                        ? Image.asset("images/check.png")
                                        : null,
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              child: TextUtils(
                                  color: Colors.black.withOpacity(.9),
                                  textdecoration: TextDecoration.none,
                                  text: "I accept ",
                                  fontsize: 20,
                                  fontweight: FontWeight.bold),
                            ),
                            Container(
                              child: TextUtils(
                                  color: Colors.black.withOpacity(.9),
                                  textdecoration: TextDecoration.underline,
                                  text: "terms & conditions",
                                  fontsize: 20,
                                  fontweight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthButtom(
                          text: "Sign up",
                          onpressed: () {},
                        ),
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
                      "Already have an Account? ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.loginscreen);
                      },
                      child: const Text(
                        "Log in",
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
