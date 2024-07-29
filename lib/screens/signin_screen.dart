import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:photo_share/const/colors.dart';
import 'package:photo_share/screens/homescreens/home_screen.dart';
import 'package:photo_share/widget/custom_text_field.dart';
import 'package:photo_share/widget/info_icon.dart';
import '../widget/custombutton.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  double spacing = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(
                    height: 350,
                    child: Center(
                        child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset(
                                'assets/logo.png'
                            )
                        )
                    )
                ),

                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextField(
                            controller: usernamecontroller,
                            hint: 'Username',
                            ispassword: false
                        ),
                        SizedBox(height: spacing,),
                        CustomTextField(
                            controller: passwordcontroller,
                            hint: 'Password',
                            ispassword: true
                        ),
                        SizedBox(height: spacing,),
                        CustomButton(
                          ontap: (){

                            if(passwordcontroller.text.isNotEmpty
                                && usernamecontroller.text.isNotEmpty){
                              Get.to(const HomeScreen());
                            }

                          },
                        ),
                      ],
                    )),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InfoIcon(),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
