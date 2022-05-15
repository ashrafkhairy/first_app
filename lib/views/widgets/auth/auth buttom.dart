import 'package:first___app/2.2%20theme.dart';
import 'package:first___app/views/widgets/text+utils.dart';

import 'package:flutter/material.dart';

class AuthButtom extends StatelessWidget {
  final String text;
  final Function onpressed;

  const AuthButtom({Key? key, required this.text, required this.onpressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(360, 50),
        primary: mainColor,
      ),
      child: TextUtils(
          text: text,
          color: Colors.white,
          textdecoration: TextDecoration.none,
          fontsize: 18,
          fontweight: FontWeight.bold),
    );
  }
}
