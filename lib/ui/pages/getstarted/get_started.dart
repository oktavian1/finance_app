import 'package:flutter/material.dart';
import 'package:mobile_finance/size_config.dart';
import 'package:mobile_finance/ui/widgets/onboard_widget.dart';

import '../../../theme.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/icon_plane.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/icon_plane.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/icon_plane.png"
    },
  ];

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    int index = -1;
    int currentIndex = 0;

    AnimatedContainer indicator(int index) {
      return AnimatedContainer(
        duration: kAnimationDuration,
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: PageView.builder(
                itemBuilder: (context, index) => OnboardWidget(
                  imageUrl: splashData[index]["image"] ?? "",
                  text: splashData[index]["text"] ?? "",
                ),
                itemCount: splashData.length,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: kBackgroundColor,
    //     body: Column(
    //       children: [
    //         Expanded(
    //           flex: 2,
    //           child: PageView.builder(
    //             itemBuilder: (context, index) => OnboardWidget(
    //               text: splashData[index]["text"] ?? '',
    //               imageUrl: splashData[index]["image"] ?? '',
    //               indexList: splashData,
    //               indexInt: index,
    //             ),
    //             itemCount: splashData.length,
    //             onPageChanged: (value) {
    //               setState(() {
    //                 currentPage = value;
    //               });
    //             },
    //           ),
    //         ),
    //         Container(
    //           child: Align(
    //             alignment: Alignment.center,
    //             child: Row(
    //               children: List.generate(
    //                 splashData.length,
    //                 (index) => buildDot(index: index),
    //               ),
    //             ),
    //           ),
    //         ),
    //         // Expanded(
    //         //   flex: 1,
    //         //   child: Padding(
    //         //     padding: EdgeInsets.symmetric(horizontal: 5),
    //         //     child: Row(
    //         //       children: List.generate(
    //         //         splashData.length,
    //         //         (index) => buildDot(index: index),
    //         //       ),
    //         //     ),
    //         //   ),
    //         // ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
