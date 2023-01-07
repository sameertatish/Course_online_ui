// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_application_1/constatn.dart';
import 'package:video_player/video_player.dart';

class OnlineCourseScreen extends StatefulWidget {
  OnlineCourseScreen({Key? key}) : super(key: key);

  @override
  State<OnlineCourseScreen> createState() => _OnlineCourseScreenState();
}

class _OnlineCourseScreenState extends State<OnlineCourseScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  List randomImage = [
    '$imagePath/user_1.png',
    '$imagePath/user_2.png',
    '$imagePath/user_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "$iconPath/search_icon.svg",
              color: iconColor,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              icon: SvgPicture.asset("$iconPath/menu_icon.svg"),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Colors.white,
        shape: const Border(
          bottom: BorderSide(color: appBarBorderBottomColor),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(paddingMain24),
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(
                    height: 200.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('$imagePath/background.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
          ),
          const AuthorIcon(),
          Padding(
            padding: EdgeInsets.only(
                left: paddingMain32, right: paddingMain32, top: paddingMain8),
            child: Text(
              'Learning Python for\nData Analysis and\nVisualization',
              style: TextStyle(
                  fontSize: fontSize26,
                  fontWeight: FontWeight.w600,
                  color: titleColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: paddingMain32, right: paddingMain32, top: paddingMain8),
            child: Text(
              'Learn python and how to use it to analyze,visualize and present data.\nIncludes tons of sample code and\nhours of video!',
              style: TextStyle(
                  fontSize: fontSize18,
                  fontWeight: FontWeight.w400,
                  color: descriptionColor),
            ),
          ),
          const LevelIconViewrs(),
          const Grid(),
          Likes(randomImage: randomImage),
          const CardCourseBanner(),
          Container(
            height: Adaptive.px(25),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: descriptionColor),
            )),
            child: Padding(
              padding:
                  EdgeInsets.only(bottom: paddingMain8, left: paddingMain24),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About The Course',
                    style: TextStyle(
                        fontSize: fontSize18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    width: Adaptive.px(52),
                  ),
                  Text(
                    'Content',
                    style: TextStyle(
                        fontSize: fontSize18,
                        fontWeight: FontWeight.w500,
                        color: descriptionColor),
                  ),
                ],
              ),
            ),
          ),
          const BoxDescription(),
          SizedBox(
            height: paddingMain32,
          ),
          Padding(
            padding: EdgeInsets.only(left: paddingMain24),
            child: Text(
              'Prerequisites',
              style: TextStyle(
                  color: titleColor,
                  fontSize: fontSize18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Divider(
            thickness: 1,
            color: titleColor,
            endIndent: 100.w - 135,
          ),
          Padding(
            padding: EdgeInsets.only(left: paddingMain24, top: paddingMain8),
            child: Text(
              'Intermediate Python & SQL',
              style: TextStyle(
                  fontSize: fontSize14,
                  fontWeight: FontWeight.w400,
                  color: descriptionColor),
            ),
          )
        ],
      )),
    );
  }
}
