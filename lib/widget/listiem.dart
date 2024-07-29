import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../const/style.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 100,
          color: Colors.blue,),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('This is the title'),
                Text('Likes 300',style: smallstyle.copyWith(color: greycolor,fontSize: 8),),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
