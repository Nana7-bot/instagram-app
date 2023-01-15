import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/reusable_widget/default_layer.dart';
import 'package:instagram_ui/reusable_widget/feed_video_container.dart';
import 'package:instagram_ui/reusable_widget/usersStoryImg.dart';

import '../reusable_widget/currentUserStoryImg.dart';
import '../reusable_widget/feed_image_container.dart';
import '../utiles/data.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {

  final DataInfo _dataInfo = DataInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: ImageIcon(
            AssetImage(
              'images/Instagram_dark.png',
            ),
          ),
        ),
        leadingWidth: 150.0,
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 0.2,
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 0.2,
            icon: FaIcon(FontAwesomeIcons.heart),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 0.2,
            icon: Icon(FontAwesomeIcons.facebookMessenger),
          ),
        ],
      ),
      body: DefaultLayer(
        onRefreshAction: () async {
          await Future.delayed(
            Duration(milliseconds: 5000),
          );
          if (mounted) setState(() {});
        },
        childWidget: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CurrentUserStoryImg(
                      label: "Your story",
                      containerOneWidth: 80,
                      containerOneHeight: 80,
                      positionLeft: 40.0,
                      positionTop: 40,
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Kallehallden",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/kal.jpg',
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Michael Adams Boateng",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/clever.jpg',
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Michael Adams Boateng",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/esi.jpg',
                    ),
                    UserStoryImg(
                      containerOneWidth: 80,
                      containerOneHeight: 120,
                      containerTwoWidth: 80,
                      containerTwoHeight: 80,
                      textPositionTop: 90,
                      textLabel: "Michael Adams Boateng",
                      storyColor: Colors.red,
                      storyColorBorder: 3,
                      imageString: 'images/ourben.jpg',
                    ),
                  ],
                ),
              ),


              FeedImageContainer(imagePath: "images/cr7.jpeg",),
              FeedVideoContainer(videoPath: "videoPath",)
              // FeedImageContainer(videoPath: "video",),
            ],
          ),
        ),
      ),
    );
  }
}

