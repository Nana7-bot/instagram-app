import 'package:flutter/material.dart';
import 'package:instagram_ui/reusable_widget/currentUserStoryImg.dart';
import 'package:instagram_ui/reusable_widget/custom_button.dart';
import 'package:instagram_ui/reusable_widget/default_layer.dart';
import 'package:instagram_ui/reusable_widget/small_video_container.dart';
import 'package:instagram_ui/reusable_widget/usersStoryImg.dart';
import 'package:instagram_ui/screens/login_screen.dart';

import '../reusable_widget/small_image_container.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  double bodyPadding = 0;

  List imagePath = [
    'images/goat.jpg',
    'images/lisa.jpg',
    'images/naamomo.jpg',
    'images/kofi.jpg',
    'images/naa.jpg',
  ];

  navigateToLoginScreen(context) {}

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(bodyPadding),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Container(
            height: 100,
            // padding: EdgeInsets.symmetric(horizontal: 5.0),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 250,
                  child: Row(
                    children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              bodyPadding = 20;
                            });
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 300,
                                    child: Wrap(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(),
                                            ),
                                          ),
                                          child: ListTile(
                                            leading: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "images/adams.jpeg"),
                                            ),
                                            title: Text(
                                              'mighty.mike07',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            trailing: Icon(
                                              Icons.check_circle,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(),
                                            ),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginScreen(),
                                                ),
                                              );
                                            },
                                            child: ListTile(
                                              leading: Icon(
                                                Icons.add_circle_outline,
                                                size: 30,
                                              ),
                                              title: Text('Add Account'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).whenComplete(() => setState(() {
                                  bodyPadding = 0;
                                }));
                          },
                          child: Text(
                            "mighty.mike07",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp)
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      splashRadius: 0.2,
                      icon: Icon(Icons.add_box_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      splashRadius: 0.2,
                      icon: Icon(Icons.menu),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: DefaultLayer(
          onRefreshAction: () async {
            await Future.delayed(
              Duration(milliseconds: 5000),
            );
            if (mounted) setState(() {});
          },
          childWidget: ListView(
            children: [
              ////////////////////////////////
              ////// Image Avatar & User followers details
              ////////////////////////////////
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CurrentUserStoryImg(
                      label: "",
                      containerOneWidth: 110,
                      containerOneHeight: 110,
                      positionLeft: 70.0,
                      positionTop: 70,
                    ),
                    ProfileDetailItem(
                      dataName: "Posts",
                      dataNumber: "3,418",
                    ),
                    ProfileDetailItem(
                      dataNumber: "529M",
                      dataName: "Followers",
                    ),
                    ProfileDetailItem(
                      dataNumber: "52",
                      dataName: "Following",
                    ),
                  ],
                ),
              ),

              ////////////////////////////////
              ////// Logged In user Profile Text
              ////////////////////////////////
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Michael Nana Adams',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'Digital creator',
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text("Sharing ideas in the world of tech."),
                    Text("Youtuber"),
                    Text("@mightymike07"),
                  ],
                ),
              ),

              //////////////////////////////////////
              /////////// Edit Profile
              /////////////////////////////////////
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: CustomButton(
                    buttonColor: Colors.grey.shade200,
                    labelColor: Colors.black,
                    label: "Edit Profile",
                    onPress: () {}),
              ),

              ///////////////////////////////////////
              /////////// Saved Stories
              /////////////////////////////////////
              Container(
                width: double.infinity,
                height: 90,
                margin: EdgeInsets.only(bottom: 15),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return UserStoryImg(
                        storyColor: Colors.grey,
                        textLabel: "Michael Nana Adams",
                        containerOneWidth: 70,
                        containerOneHeight: 90,
                        containerTwoWidth: 70,
                        containerTwoHeight: 70,
                        textPositionTop: 75,
                        imageString: imagePath[index],
                      );
                    }),
              ),

              ////////////////////////////////////
              //////// Tab bar Controller Button
              ///////////////////////////////////
              Container(
                height: 50,
                child: TabBar(
                  controller: tabController,
                  indicatorColor: Colors.black,
                  splashFactory: NoSplash.splashFactory,
                  tabs: [
                    Icon(
                      Icons.border_all,
                      size: 30,
                      // color: Colors.black,
                    ),
                    Icon(
                      Icons.video_library_outlined,
                      size: 30,
                      // color: Colors.black,
                    ),
                    Icon(
                      Icons.person_pin_outlined,
                      size: 30,
                      // color: Colors.black,
                    ),
                  ],
                ),
              ),

              ////////////////////////////////
              ////// TabBar items
              ////////////////////////////////
              Container(
                height: 1000,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ////////////////////
                    /// Images & Reels Uploaded
                    ////////////////////
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: SmallImageContainer(
                                  containerHeight: 150,
                                  imagePath: "images/adams.jpeg",
                                ),
                              ),
                              Expanded(
                                child: SmallImageContainer(
                                  containerHeight: 150,
                                  imagePath: "images/adams.jpeg",
                                ),
                              ),
                              Expanded(
                                child: SmallImageContainer(
                                  containerHeight: 150,
                                  imagePath: "images/adams.jpeg",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    ////////////////////
                    /// Reels Uploaded
                    ////////////////////
                    Container(

                      color: Colors.blue,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: SmallVideoContainer(),
                              ),
                              Expanded(
                                child: SmallVideoContainer(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SmallVideoContainer(),
                              ),
                              Expanded(
                                child: SmallVideoContainer(),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

                    ////////////////////
                    /// Tags Uploaded
                    ////////////////////
                    Container(
                      height: 100,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDetailItem extends StatelessWidget {
  const ProfileDetailItem({
    Key? key,
    required this.dataName,
    required this.dataNumber,
  }) : super(key: key);

  final String dataName;
  final String dataNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Text(
            dataNumber,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(dataName),
        ],
      ),
    );
  }
}
