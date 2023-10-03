import 'package:flutter/material.dart';

class CircularProgress16x9 extends StatelessWidget {
  const CircularProgress16x9({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 16 / 9,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
