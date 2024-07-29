import 'package:flutter/material.dart';
import 'package:photo_share/widget/customtinybutton.dart';

import '../const/colors.dart';
import '../const/style.dart';

class UserProfileBar extends StatelessWidget {
  UserProfileBar({required this.name});
  String name;

Widget verticalsperator(){
  return Container(
    color: greycolor,
    height: 70,
    width: 0.8,
  );
}

  Widget icontitle({required IconData icon,required String title,required Color iconcolor}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon,size: 15,color: iconcolor),
        SizedBox(width: 3,),
        Text(title,style: smallstyle.copyWith(color: greycolor,fontSize: 8),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          const Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.more_vert_rounded,
                  size: bigiconsize,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: primarycolor,
                        radius: 20.0,
                      ),
                      Text('Lisa Ford',style: mediumstyle,),
                    ],
                  ),
                ),
              ],
            ),
          ),

          verticalsperator(),

          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icontitle(icon: Icons.favorite,title: '450' + ' Likes', iconcolor: redcolor),
                  const SizedBox(height: 5,),
                  icontitle(icon: Icons.person,title: '325' + ' Followers', iconcolor: greycolor!),
                ],
              ),
            ),
          ),

          verticalsperator(),

          Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTinyButton(title: 'Follow',ontap: () {  },),
                ],
              )),

        ],
      ),
    );
  }
}
