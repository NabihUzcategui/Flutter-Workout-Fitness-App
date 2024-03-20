import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController? pageController = PageController();
  int selectedPage = 0;

  List pageArr = [
    {
      "title": "Have a good health",
      "subtitle":
          "Being healthy is all, no health is nothing.\nSo why do not we",
      "image": "assets/img/on_board_1.png",
    },
    {
      "title": "Be stronger",
      "subtitle":
          "Take 30 minutes of bodybuilding every day\nto get physically fit and healthy.",
      "image": "assets/img/on_board_2.png",
    },
    {
      "title": "Have nice body",
      "subtitle":
          "Bad body shape, poor sleep, lack of strength,\nweight gain, weak bones, easily traumatized\n body, depressed, stressed, poor metabolism,\n poor resistance",
      "image": "assets/img/on_board_3.png",
    }
  ];

  @override
  void initState() {
    super.initState();

    pageController?.addListener(() {
      selectedPage = pageController?.page?.round() ?? 0;

      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.primary,
      body: Stack(
        children: [
          Image.asset(
            "assets/img/on_board_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          PageView.builder(
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                final pObj = pageArr[index] as Map ?? {};

                return Column(
                  children: [
                    Text(""),
                  ],
                );
              })
        ],
      ),
    );
  }
}
