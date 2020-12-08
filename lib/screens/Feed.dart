import 'package:flutter/material.dart';
import 'package:Connect_in_single/main.dart';
import 'package:Connect_in_single/constant/feed_json.dart';
import 'package:Connect_in_single/widgets/post_feed.dart';
import 'package:Connect_in_single/widgets/suggestions.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        // color: AppStateContainer.of(context).theme.primaryColor,
        child: Column(
          // scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
            height: 12.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  width: 5.0,
                ),
                Custombutton(name:'Fashion'),
                SizedBox(
                  width: 5.0,
                ),
                Custombutton(name:'Photography'),
                SizedBox(
                  width: 5.0,
                ),
                Custombutton(name:'Food'),
                SizedBox(
                  width: 5.0,
                ),
                Custombutton(name:'Art'),
                SizedBox(
                  width: 5.0,
                ),
                Custombutton(name:'Movies'),
              ]),
            ),
            Column(
            children: List.generate(posts.length, (index){
              return PostFeed(
                postImg: posts[index]['postImg'],
                profileImg: posts[index]['profileImg'],
                name: posts[index]['name'],
                caption: posts[index]['caption'],
                isLoved: posts[index]['isLoved'],
                viewCount: posts[index]['commentCount'],
                likedBy: posts[index]['likedBy'],
                dayAgo: posts[index]['timeAgo'],
              );
            }),
          ),
          ],
        ));
  }
}
