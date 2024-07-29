import 'package:flutter/material.dart';


class InfoIcon extends StatelessWidget {
  const InfoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Icon(
          Icons.info_outline,
          size: 40,
          color: Colors.grey),
    );
  }
}
