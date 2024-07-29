import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_share/screens/favorite_screen.dart';
import 'package:photo_share/screens/homescreens/homefeed.dart';
import 'package:photo_share/screens/userpage_screen.dart';

import '../../const/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PageController? pagec = PageController();
  bool init = false;

  void jumppage(index){
    if (init) { // Check if controller is initialized
      pagec!.jumpToPage(index);
    }
    setState(() {
      currentindex = index;
    });
    print('pressed');
  }

  Widget topbar(){
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: SizedBox(
            height: 40,
            child: Row(
              children: [
                Icon(Icons.more_vert_rounded,size: 30,color: greycolor,),
                Expanded(
                    child: Center(
                        child: Image.asset('assets/logo.png')
                    )
                ),
                Icon(Icons.camera_alt_outlined,size: 30,color: greycolor,),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }

  int currentindex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            const SizedBox(height: 5,),

            currentindex == 2 ? const SizedBox() : topbar(),

            Expanded(
                child: PageView(
                  controller: pagec,
                  // physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index){
                    setState(() {
                      currentindex = index;
                    });
                  },
              children: const [
                FavoriteScreen(),
                HomeFeed(),
                UserPageScreen(),
              ],
                ),
            ),

            const Divider(),
            bottomnav(
                ontap: (index){
                  // jumppage(index);
                }, controller: pagec!),
            const SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }

  Widget bottomicons({
    icon,
    selected,
    ontap
  }){
    return GestureDetector(
        onTap: ontap,
        child: Icon(
          icon,
          size: 30,
          color: selected ? secondarycolor : greycolor,
        )
    );
  }



  Widget bottomnav({
    required Function(int) ontap,
    required PageController controller
  }){

    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bottomicons(
              icon: Icons.favorite_border,
              selected: currentindex == 0,
              ontap: (){
                ontap(0);
                controller.jumpToPage(0);
              }
          ),
          Center(
            child: bottomicons(
                icon: Icons.home_outlined,
                selected: currentindex == 1,
                ontap: (){
                  ontap(1);
                  controller.jumpToPage(1);
                }
                  ),
                  ),
                  bottomicons(
              icon: Icons.person_outlined,
              selected: currentindex == 2,
              ontap: (){
                ontap(2);
                controller.jumpToPage(2);
              }
          ),
        ],
      ),
    );

  }

}
