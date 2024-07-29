import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:photo_share/widget/feedcard.dart';

import '../../controller/datacontroller.dart';


class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataController>(
        init: DataController(),
        builder: (data) {
          return ListView.builder(
              itemCount: data.postmodellist.length,
              itemBuilder: (context, index){
                return FeedCard(postmodel: data.postmodellist[index],);
              });
        }
    );;
  }
}

