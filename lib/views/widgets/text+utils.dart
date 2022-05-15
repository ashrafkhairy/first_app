// import 'package:flutter/material.dart';

// class TextUtils extends StatelessWidget {
//   final String text;
//   final double fontsize;
//   final FontWeight fontweight;
//   final Color color;

//   const TextUtils(
//       {required this.fontsize,
//       required this.fontweight,
//       required this.text,
//       required this.color,
//       Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style:
//           TextStyle(fontSize: fontsize, fontWeight: fontweight, color: color),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontweight;
  final Color color;
  final TextDecoration textdecoration;
  const TextUtils(
      {required this.color,
      required this.textdecoration,
      required this.text,
      required this.fontsize,
      required this.fontweight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontweight,
          color: color,
          decoration: textdecoration),
    );
  }
}
