import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:photo_share/const/colors.dart';
import 'package:photo_share/models/postmodel.dart';


class FeedCard extends StatefulWidget {
  FeedCard({required this.postmodel});
  PostModel postmodel;

  @override
  State<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {

  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
            ),
            title: Text(widget.postmodel.username),
          ),
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: greycolor,
                  ),
                ),

                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                      onPressed: (){
                        setState(() {
                          favorite =! favorite;
                        });
                      },
                      icon: Icon(widget.postmodel.isliked ? Icons.favorite : Icons.favorite_border,size: 30,color: Colors.red,)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
            child: Row(
              children: [
                const Expanded(
                    flex: 10,
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        style: TextStyle(fontSize: 8),
                        decoration: InputDecoration(
                          hintText: 'Add a comment..',
                          hintStyle: TextStyle(fontSize: 8),
                          // icon: Icon(Icons.chat_bubble_outline_outlined),
                            prefixIcon: Icon(Icons.chat_bubble_outline_outlined),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          )
                        ),

                      ),
                    )),
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Ionicons.share_outline),
                      Icon(Icons.favorite,color: greycolor,),
                      Text('${widget.postmodel.likecounts} Likes',style: TextStyle(color: greycolor,fontSize: 10),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 15,),
              Text(widget.postmodel.comments.keys.first,style: TextStyle(fontSize: 13),),
              SizedBox(width: 8,),
              Text(widget.postmodel.comments.values.first,style: TextStyle(color: greycolor,fontSize: 13),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 4),
            child: Text('20 minutes',style: TextStyle(color: greycolor,fontSize: 10),),
          ),
        ],
      ),
    );
  }
}
