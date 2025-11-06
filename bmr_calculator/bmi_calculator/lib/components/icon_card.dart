import 'package:flutter/material.dart';
import '../constants.dart';

// Widget untuk menampilkan ikon dengan caption
class IconCard extends StatelessWidget {
  const IconCard({Key? key, this.cardIcon, required this.caption})
      : super(key: key);

  final IconData? cardIcon;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 70.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          caption,
          style: labelTextStyle,
        ),
      ],
    );
  }
}