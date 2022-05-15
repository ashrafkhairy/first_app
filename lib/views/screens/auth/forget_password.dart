import 'package:first___app/2.2%20theme.dart';
import 'package:first___app/utils/my_string.dart';
import 'package:first___app/views/widgets/auth/auth%20buttom.dart';
import 'package:first___app/views/widgets/auth/text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForGetPassword extends StatelessWidget {
  ForGetPassword({Key? key}) : super(key: key);
  final TextEditingController emailcontrollers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text("Forget Password",
            style: TextStyle(color: Colors.black)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 30,
                      )),
                ),
              ],
            ),
            const Text(
              "If you want to recover your account,then please provide your email ID below..",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "images/forgetpass copy.png",
              height: 270,
              width: 230,
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
            SizedBox(
              height: 50,
            ),
            AuthButtom(text: "SEND", onpressed: () {})
          ],
        ),
      ),
    ));
  }
}
