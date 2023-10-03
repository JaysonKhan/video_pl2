import 'package:flutter/material.dart';

class Error16x9 extends StatelessWidget {
  String errormessage;
  Color color;

  Error16x9({
    required this.errormessage,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Center(
        child: Text(errormessage, style: TextStyle(color: color)),
      ),
    );
  }
}
