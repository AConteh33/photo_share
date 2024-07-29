import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_share/const/colors.dart';
import 'package:photo_share/const/style.dart';
import 'package:photo_share/widget/customtinybutton.dart';
import 'package:photo_share/widget/listiem.dart';

import 'homescreens/homefeed.dart';

class UserPageScreen extends StatefulWidget {
  const UserPageScreen({super.key});

  @override
  State<UserPageScreen> createState() => _UserPageScreenState();
}

class _UserPageScreenState extends State<UserPageScreen> {

  int currentindex = 0;
  PageController pagec = PageController();

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

  Widget userprofile(){
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

  Widget customicon(icon,{selectedindex,bool selected = false}){
    return SizedBox(
        height: 50,
        width: 50,
        child: IconButton(
            onPressed: (){
              pagec.jumpToPage(selectedindex);
            },
            icon: Icon(icon,size: 35,color: selected ? secondarycolor : greycolor! )));
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            userprofile(),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customicon(Icons.grain,selectedindex:0,selected: currentindex == 0),
                customicon(Icons.menu,selectedindex:1,selected: currentindex == 1),
                customicon(Icons.photo_size_select_actual_outlined,selectedindex: 2,selected: currentindex == 2),
              ],
            ),
            const SizedBox(height: 8,),
            Expanded(
                child:  PageView(
                  controller: pagec,
                  // physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index){
                    setState(() {
                      currentindex = index;
                    });
                  },
                  children: [
                    GridView.builder(
                      itemCount: 9,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                        ), itemBuilder: (context, index){
                      return Container(
                        color: Colors.blue,
                      );
                    }),

                    ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index){
                      return const ListItem();
                    }),

                    HomeFeed(),
                  ],
                )
            )
          ],
    );
  }
}
