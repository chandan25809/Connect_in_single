import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:Connect_in_single/main.dart';
class PostFeed extends StatelessWidget {
   final String profileImg;
  final String name;
  final String postImg;
  final String caption;
  final isLoved;
  final String likedBy;
  final String viewCount;
  final String dayAgo;
  const PostFeed({
    Key key, this.profileImg, this.name, this.postImg, this.isLoved, this.likedBy, this.viewCount, this.dayAgo, this.caption,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  SizedBox(width:16),
                  Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(profileImg),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 7,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('$name', style: TextStyle(color: Color(0XFF343339), fontSize: 14, fontWeight: FontWeight.w600),),
                      SizedBox(height: 1,),
                      Text('$dayAgo', style: TextStyle(fontSize: 12, color: Color(0XFF8B8B8B)),),
               /* Center(
                child:Text('$name',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),
                ),),
                Text('$dayAgo',
                style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor.withOpacity(0.7),
                  fontSize: 12,
                ),
                ),*/
                  ],
                ),
                ],),
                IconButton(
                    padding: EdgeInsets.only(right:8),
                      icon: Icon(Icons.more_horiz,),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),
                  
                /*ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(profileImg),fit: BoxFit.cover)
                  ),
                  ),
                  title: Text('$name',style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                  ),
                  ),
                  subtitle: Text('$dayAgo',
                  style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor.withOpacity(0.7),
                  fontSize: 12,
                  ),
                  ),
                  trailing: IconButton(
                    alignment: Alignment.centerRight,
                      iconSize: 20,
                      icon: Icon(Icons.more_horiz,),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),
                  ),*/
                
                
                
              ],
            
            ),
          ),
          //
          // Padding(padding: EdgeInsets.only(bottom:25,left: 55,right: 15),
          //   child:  Text("$dayAgo",style: TextStyle(
          //     color: AppStateContainer.of(context).theme.accentColor.withOpacity(0.5),
          //     fontSize: 15,
          //     fontWeight: FontWeight.w500
          //   ),),
          //   ),
          SizedBox(height:5),
          Container(
            height: 413,
            width: 414,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(postImg),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
              children: <Widget>[
                
                isLoved ? SvgPicture.asset("assets/images/love_icon.svg",width: 27,) : SvgPicture.asset("assets/images/love_icon.svg",width: 27,),
                SizedBox(width: 15,),
                SvgPicture.asset("assets/images/comment_icon.svg",width: 27,),
                  SizedBox(width: 15,),
                SvgPicture.asset("assets/images/share_icon.svg",width: 27,),
              ],
            ),
            // SvgPicture.asset("assets/images/save_icon.svg",width: 27,),
              Text('$viewCount likes',style: TextStyle(color:AppStateContainer.of(context).theme.accentColor),)
              ],
            ),
            
          ),
          
          SizedBox(height: 12,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15,right: 15),
          //   child: RichText(text: TextSpan(
          //     children: [
          //       TextSpan(
          //         text: "Liked by ",
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.w500,
          //           color: AppStateContainer.of(context).theme.accentColor
          //         )
          //       ),
          //       TextSpan(
          //         text: "$likedBy ",
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.w700,
          //           color: AppStateContainer.of(context).theme.accentColor
          //         )
          //       ),
          //       TextSpan(
          //         text: "and ",
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.w500,
          //           color: AppStateContainer.of(context).theme.accentColor
          //         )
          //       ),
          //       TextSpan(
          //         text: "Other",
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.w700,
          //           color: AppStateContainer.of(context).theme.accentColor
          //         )
          //       ),
                
          //     ]
          //   )),
          // ),
          Padding(padding: EdgeInsets.only(left: 20,right: 15),
          child: RichText(text: TextSpan(
              children: [
                // TextSpan(
                //   text: "$name ",
                //   style: TextStyle(
                //     fontSize: 15,
                //     fontWeight: FontWeight.w700,
                //     color: AppStateContainer.of(context).theme.accentColor
                //   )
                // ),
                
                TextSpan(
                  text: "$caption",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppStateContainer.of(context).theme.accentColor
                  )
                ),

              ]
            ))),
            SizedBox(height: 32),
            Divider(
              color: AppStateContainer.of(context).theme.accentColor.withOpacity(0.3),
              height:1
            ),
            SizedBox(height: 12),
       
        ],
      ),
    );
  }

}
