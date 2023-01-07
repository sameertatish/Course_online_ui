import 'package:flutter/material.dart';
import 'package:flutter_application_1/constatn.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:super_banners/super_banners.dart';

class BoxDescription extends StatelessWidget {
  const BoxDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingMain24, right: paddingMain24),
      child: Container(
        height: Adaptive.px(400),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            border: Border.all(width: 1, color: Color(0xffbdbdbd))),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(
              left: paddingMain32, right: paddingMain24, top: paddingMain16),
          child: Column(children: [
            Text(
              'This course will give you the\nresources to learn python and\neffectively use it analyze and\nvisualize data! Start your\ncareer in Data Science!',
              style:
                  TextStyle(fontSize: fontSize22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: paddingMain16,
            ),
            Text(
                "You will get a full understanding of how to program with Python and how to use it in conjunction with scientific computing modules and libraries to analyze data."),
            SizedBox(
              height: paddingMain8,
            ),
            Text(
                "You will get a full understanding of how to program with Python and how to use it in conjunction with scientific computing modules and libraries to analyze data."),
            SizedBox(
              height: paddingMain8,
            ),
            Text(
                "You will get a full understanding of how to program with Python and how to use it in conjunction with scientific computing modules and libraries to analyze data."),
            SizedBox(
              height: paddingMain8,
            ),
            Text(
                "You will get a full understanding of how to program with Python and how to use it in conjunction with scientific computing modules and libraries to analyze data."),
            SizedBox(
              height: paddingMain8,
            ),
            Text(
                "You will get a full understanding of how to program with Python and how to use it in conjunction with scientific computing modules and libraries to analyze data."),
            SizedBox(
              height: paddingMain8,
            ),
          ]),
        )),
      ),
    );
  }
}

class CardCourseBanner extends StatelessWidget {
  const CardCourseBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: paddingMain24,
          right: paddingMain24,
          bottom: paddingMain24,
          top: paddingMain20),
      child: Container(
        width: Adaptive.w(312),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 1, color: appBarBorderBottomColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: paddingMain22,
                  right: paddingMain22,
                  top: paddingMain16,
                  bottom: paddingMain24),
              child: Stack(
                children: [
                  Image.asset(
                    fit: BoxFit.fitWidth,
                    '$imagePath/course_image.png',
                    width: 100.w,
                  ),
                  PositionedCornerBanner(
                      bannerPosition: CornerBannerPosition.topRight,
                      bannerColor: Color.fromRGBO(86, 204, 242, 50),
                      child: Padding(
                        padding: EdgeInsets.all(Adaptive.px(8)),
                        child: Text(
                          'Online',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize22,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: paddingMain24),
              child: Text(
                '50,000 SYP',
                style: TextStyle(
                    fontSize: fontSize16,
                    color: titleColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: paddingMain24,
                  top: paddingMain8,
                  bottom: paddingMain24),
              child: Text(
                '100,000 SYP',
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: fontSize12,
                    color: lastPriceColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: EdgeInsets.only(
                      top: Adaptive.px(13),
                    ),
                    width: Adaptive.px(172),
                    height: Adaptive.px(48),
                    decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                            color: Color.fromRGBO(59, 126, 197, 0.25),
                            spreadRadius: 0,
                            blurRadius: 25,
                            offset: Offset(5, 5), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(86, 204, 242, 100),
                          Color.fromRGBO(59, 126, 197, 100)
                        ])),
                    child: GestureDetector(
                        child: Text(
                      'Enroll',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize16,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ))),
                SvgPicture.asset('$iconPath/save_icon.svg'),
                SvgPicture.asset('$iconPath/heart_sold_icon.svg'),
              ],
            ),
            SizedBox(height: paddingMain16)
          ],
        ),
      ),
    );
  }
}

class Likes extends StatelessWidget {
  const Likes({
    Key? key,
    required this.randomImage,
  }) : super(key: key);

  final List randomImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingMain24, right: paddingMain28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("$iconPath/heart_icon.svg"),
              SizedBox(width: paddingMain8),
              Text(
                '50 People wish this item.',
                style: TextStyle(
                    fontSize: fontSize14,
                    color: descriptionColor,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              for (int n = 0; n < randomImage.length; n++)
                Align(
                  widthFactor: 0.5,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: Image.asset(randomImage[n]).image,
                    ),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: paddingMain24,
          right: paddingMain24,
          top: paddingMain20,
          bottom: paddingMain20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(251, 154, 11, 0.05),
              Color.fromRGBO(209, 77, 205, 0.05)
            ])),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const TitleDescriptionGrid(
                    title: '3 days',
                    description:
                        'It"ll start after 3\ndays and ends\n1 Jan 2023'),
                const TitleDescriptionGrid(
                    title: '35/50',
                    description: 'The course\n contains 30h of\n content.'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TitleDescriptionGrid(
                    title: '20',
                    description: 'The course\ncontains 20\nsessions.'),
                const TitleDescriptionGrid(
                    title: '30 Hours',
                    description: '35 Enrolled\nStudents, 15\nleft.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LevelIconViewrs extends StatelessWidget {
  const LevelIconViewrs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: paddingMain24, top: Adaptive.px(10), right: paddingMain30),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset(
          "$iconPath/level_icon.png",
        ),
        Padding(
          padding:
              EdgeInsets.only(left: Adaptive.px(6.0), right: Adaptive.px(12)),
          child: Text(
            'Intermediate',
            style: TextStyle(
                color: descriptionColor,
                fontSize: fontSize16,
                fontWeight: FontWeight.w400),
          ),
        ),
        const StarIcon(icon: "$iconPath/star_sold_icon.svg"),
        const StarIcon(icon: "$iconPath/star_sold_icon.svg"),
        const StarIcon(icon: "$iconPath/star_sold_icon.svg"),
        const StarIcon(icon: "$iconPath/star_sold_icon.svg"),
        const StarIcon(icon: "$iconPath/star_outline_icon.svg"),
        const Text(
          '(18,465)',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff828282)),
        )
      ]),
    );
  }
}

class AuthorIcon extends StatelessWidget {
  const AuthorIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingMain28),
      child: Row(
        children: [
          SvgPicture.asset(
            "$iconPath/user_icon.svg",
          ),
          Text(
            'Avinach Jain',
            style: TextStyle(
                color: descriptionColor,
                fontSize: fontSize16,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class TitleDescriptionGrid extends StatelessWidget {
  final String title;
  final String description;
  const TitleDescriptionGrid({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingMain16, bottom: paddingMain8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: fontSize22,
                fontWeight: FontWeight.w700,
                color: titleColor),
          ),
          SizedBox(
            height: paddingMain8,
          ),
          Text(
            description,
            style: TextStyle(
                fontSize: fontSize16,
                fontWeight: FontWeight.w400,
                color: descriptionColor),
          ),
          SizedBox(
            height: paddingMain24,
          ),
        ],
      ),
    );
  }
}

class StarIcon extends StatelessWidget {
  final String icon;
  const StarIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}
