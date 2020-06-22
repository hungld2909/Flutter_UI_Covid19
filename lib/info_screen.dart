import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_2019/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "Get to know",
              textBottom: "About Covid-19",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SymptomCard(
                        image: "assets/images/headache.png",
                        title: "Headache",
                        isActive: true,
                      ),
                      SymptomCard(
                        image: "assets/images/caugh.png",
                        title: "Caugh",
                      ),
                      SymptomCard(
                        image: "assets/images/fever.png",
                        title: "Fever",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Prevention",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Container(
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 24,
                                  color: kShadowColor,
                                ),
                              ]),
                        ),
                        Image.asset("assets/images/wear_mask.png"),
                        Positioned(
                          left: 139,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            height: 150,
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Wear face mask",
                                  style: kTitleTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Since the start of the coronavirus outbreak some place have fullly embraced waring facemasks",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(
                                        "assets/icons/forward.svg")),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 146,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Container(
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 24,
                                  color: kShadowColor,
                                ),
                              ]),
                        ),
                        Image.asset("assets/images/wear_mask.png"),
                        Positioned(
                          left: 139,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            height: 150,
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Wear face mask",
                                  style: kTitleTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Since the start of the coronavirus outbreak some place have fullly embraced waring facemasks",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(
                                        "assets/icons/forward.svg")),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 146,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Container(
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 24,
                                  color: kShadowColor,
                                ),
                              ]),
                        ),
                        Image.asset("assets/images/wear_mask.png"),
                        Positioned(
                          left: 139,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            height: 150,
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Wear face mask",
                                  style: kTitleTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Since the start of the coronavirus outbreak some place have fullly embraced waring facemasks",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(
                                        "assets/icons/forward.svg")),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({Key key, this.image, this.title, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: kShadowColor,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: 90,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
