import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../models/postmodel.dart';

class DataController extends GetxController{

  List<PostModel> postmodellist = [
    PostModel(
        postedby: 'lkds',
        comments: {'lkds':'lkds'},
        isliked: true,
        likecounts: 450,
        Postid: 'lkds',
        postimageurl: 'lkds',
        posttime: DateTime.now(),
        userimageurl: 'lkds',
        username: 'Loren',
    ),
    PostModel(
        postedby: 'lkds',
        comments: {'lkds':'lkds'},
        isliked: true,
        likecounts: 450,
        Postid: 'lkds',
        postimageurl: 'lkds',
        posttime: DateTime.now(),
        userimageurl: 'lkds',
        username: 'Kevin',
    )
  ];

  List<PostModel> favmodellist = [
    PostModel(
      postedby: 'lkds',
      comments: {'lkds':'lkds'},
      isliked: true,
      likecounts: 450,
      Postid: 'lkds',
      postimageurl: 'lkds',
      posttime: DateTime.now(),
      userimageurl: 'lkds',
      username: 'karen',
    ),
    PostModel(
      postedby: 'lkds',
      comments: {'lkds':'lkds'},
      isliked: true,
      likecounts: 450,
      Postid: 'lkds',
      postimageurl: 'lkds',
      posttime: DateTime.now(),
      userimageurl: 'lkds',
      username: 'Muhammed',
    )
  ];

}