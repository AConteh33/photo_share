import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_share/const/colors.dart';
import 'package:photo_share/const/style.dart';
import 'package:photo_share/widget/customtinybutton.dart';
import 'package:photo_share/widget/listiem.dart';
import 'package:photo_share/widget/userprofilebar.dart';

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
            UserProfileBar(name: 'Lisa Ford', ),
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
