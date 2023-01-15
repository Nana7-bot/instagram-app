import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//////////////////////////////////////////////////////
///////////////
//////////////////////////////////////////////////////////
class ReelVideoContainer extends StatelessWidget {
  const ReelVideoContainer({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.videoContainerWidget,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final videoContainerWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: data[index]['nameColor'],
      child: Stack(
        children: [
          videoContainerWidget,
          Positioned(
            right: 10,
            top: screenHeight * 0.05,
            child: IconButton(
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: screenHeight * 0.58,
            right: 15,
            child: Container(
              child: Column(
                children: [
                  ReelTextIcon(
                    iconFa: FontAwesomeIcons.solidHeart,
                    label: "1 M",
                  ),
                  ReelTextIcon(
                    iconFa: FontAwesomeIcons.comment,
                    label: "205 k",
                  ),
                  ReelIcon(iconFa: FontAwesomeIcons.paperPlane,),
                  ReelIcon(iconFa: Icons.more_horiz,),
                  ReelImageContainer(
                    imageBorder: 2,
                    imageRadius: 7,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.8,
            left: 15,
            child: Container(
              width: screenWidth * 0.8,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ReelImageContainer(imageBorder: 1, imageRadius: 30),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "mighy.mike07",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: screenWidth * 0.8,
                    child: Text(
                      "Documenting the journy from a junior dev to a senior dev. Subscribe to the channel and turn on bell notification icon so you don't miss any upload. Subscribe,Subscribe,Subscribe,Subscribe,Subscribe,Subscribe",
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///----------------------------------------------------------///
class ReelImageContainer extends StatelessWidget {
  const ReelImageContainer({
    Key? key,
    required this.imageBorder,
    required this.imageRadius,
  }) : super(key: key);

  final double imageBorder;
  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(width: imageBorder, color: Colors.white),
        borderRadius: BorderRadius.circular(imageRadius),
        image: DecorationImage(
          image: AssetImage('images/adams.jpeg'),
        ),
      ),
    );
  }
}

class ReelTextIcon extends StatelessWidget {
  ReelTextIcon({Key? key, required this.iconFa, this.label = ""})
      : super(key: key);
  String label;
  final IconData iconFa;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(iconFa ,size: 30,color: Colors.white,),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class ReelIcon extends StatelessWidget {
  ReelIcon({
    Key? key, required this.iconFa,
  }) : super(key: key);
  final IconData iconFa;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(iconFa,size: 30,color: Colors.white,),
        ],
      ),
    );
  }
}
