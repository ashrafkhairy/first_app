import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  bool obscure = false;
  bool truee = false;
  bool logobscure = false;

  void changeobscure() {
    obscure = !obscure;
    update();
  }

  void changetrue() {
    truee = !truee;
    update();
  }

  void logchangeobscure() {
    logobscure = !logobscure;
    update();
  }
}
