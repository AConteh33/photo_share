import 'package:flutter/material.dart';
import 'package:photo_share/const/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.ontap});
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: 40,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              colors: [
                primarycolor,
                secondarycolor,
              ]),
        ),
        child: const Center(
          child: Text('Sign In',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),),
        ),
      ),
    );
  }
}
