import 'package:flutter/material.dart';
import './Feed.dart' as feed;
import './Messenger.dart' as messenger;
import './Explore.dart' as explore;
import 'package:Connect_in_single/screens/settings_screen.dart';
import 'package:Connect_in_single/themes.dart';
import 'package:Connect_in_single/screens/settings_screen.dart';
import 'package:Connect_in_single/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStateContainer.of(context).theme.primaryColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0,right: 0,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "CISApp",
                style: TextStyle(
                    color: AppStateContainer.of(context).theme.accentColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                "Friends",
                style: TextStyle(color: Color(0XFF428EC2), fontSize: 12.0),
              ),
              // SizedBox(
              //   height: 50.0,
              // )
            ],
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: CircleAvatar(
            
            //backgroundImage: ,
            // backgroundImage: AssetImage("assets/images/cis_logo.png"),
            backgroundColor: Color(0XFF428EC2),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
            iconSize: 35,
            color: Color(0XFF222121),
          ),
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
            iconSize: 35,
            color: Color(0XFF222121),
          ),
        ],
        bottom: TabBar(
            controller: controller,
            indicatorColor: Color(0XFF428EC2),
            labelColor: Color(0XFF428EC2),
            unselectedLabelColor:AppStateContainer.of(context).theme.accentColor,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Feed",
                ),
              ),
              Tab(child: Text("Messenger")),
              Tab(child: Text("Explore")),
            ]),
      ),
      body: TabBarView(controller: controller, children: <Widget>[
        feed.Feed(),
        messenger.Messenger(),
        explore.Explore(),
      ]),
    );
  }
}
