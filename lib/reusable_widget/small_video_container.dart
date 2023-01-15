import 'package:flutter/material.dart';
import 'package:instagram_ui/reusable_widget/video_player_man.dart';

class SmallVideoContainer extends StatelessWidget {
  const SmallVideoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      color: Colors.red,
      margin: EdgeInsets.all(1),
      child: VideoPlayerMan(videoPath: "videos/output.mp4",),
    );
  }
}