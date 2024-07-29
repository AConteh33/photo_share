import 'package:flutter/material.dart';
import 'package:photo_share/const/colors.dart';

class CustomTinyButton extends StatelessWidget {
  CustomTinyButton({this.title = '',required this.ontap});
  VoidCallback ontap;
  String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: 25,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              colors: [
                primarycolor,
                secondarycolor,
              ]),
        ),
        child: Center(
          child: Text(title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 8,
              fontWeight: FontWeight.w300,
            ),),
        ),
      ),
    );
  }
}
