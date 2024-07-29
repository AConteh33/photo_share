import 'package:flutter/foundation.dart';

class PostModel {
  String userimageurl;
  String username;
  String postimageurl;
  int likecounts;
  bool isliked;
  Map<String, String> comments;
  DateTime posttime;
  String Postid;
  String postedby;

  PostModel({
    required this.postedby,
    required this.comments,
    required this.isliked,
    required this.likecounts,
    required this.Postid,
    required this.postimageurl,
    required this.posttime,
    required this.userimageurl,
    required this.username,
  });

}