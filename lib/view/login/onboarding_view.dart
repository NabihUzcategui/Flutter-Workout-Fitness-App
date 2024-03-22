import 'package:flutter/material.dart';

import '../../common/common.dart';

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
          SafeArea(
            child: PageView.builder(
              controller: pageController,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                final pObj = pageArr[index] as Map? ?? {};

                return Column(
                  children: [
                    Text(
                      pObj["title"].toString(),
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: media.width * 0.1),
                    Image.asset(
                      pObj["image"].toString(),
                      width: media.width * 0.8,
                      height: media.width * 0.8,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: media.width * 0.45),
                    Text(
                      pObj["subtitle"].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((pObj) {
                  var index = pageArr.indexOf(pObj);
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: selectedPage == index
                          ? TColor.white
                          : TColor.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                child: RoundButton(
                  title: 'Start',
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
