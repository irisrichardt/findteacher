import 'package:flutter/material.dart';

enum FTSizeTitle {
  small(size: 15.0),
  normal(size: 20.0),
  large(size: 25.0);

  final double size;

  const FTSizeTitle({required this.size});
}

class FTTextTitle extends StatelessWidget {
  final String text;
  final FTSizeTitle size;
  final Color? color;

  const FTTextTitle({
    Key? key,
    required this.text,
    required this.size,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: size.size, color: color, fontWeight: FontWeight.bold),
    );
  }
}
