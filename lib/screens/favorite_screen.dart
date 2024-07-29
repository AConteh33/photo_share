import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:photo_share/widget/feedcard.dart';

import '../controller/datacontroller.dart';


class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataController>(
      init: DataController(),
      builder: (data) {
        return ListView.builder(
          itemCount: data.favmodellist.length,
            itemBuilder: (context, index){
          return FeedCard(postmodel: data.favmodellist[index],);
        });
      }
    );
  }
}
