import 'package:flutter/material.dart';
import 'bottom_buttons.dart';
import 'explanation.dart';
import 'one_page.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState
    extends State<OnBoardingScreen> /*with ChangeNotifier*/ {
  final _controller = PageController();

  int _currentIndex = 0;

  // OpenPainter _painter = OpenPainter(3, 1);

  @override
  Widget build(BuildContext context) {
    return onBoardingList();
  }

  createCircle({required int index}) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.only(right: 4),
        height: 5,
        width: _currentIndex == index ? 15 : 5,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(3)));
  }

  Widget onBoardingList() {
    return Container(
        color: ExplanationDataList.screen_list[_currentIndex].backgroundColor,
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.all(16),
          color: ExplanationDataList.screen_list[_currentIndex].backgroundColor,
          alignment: Alignment.center,
          child: Column(children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: PageView(
                              scrollDirection: Axis.horizontal,
                              controller: _controller,
                              onPageChanged: (value) {
                                // _painter.changeIndex(value);
                                setState(() {
                                  _currentIndex = value;
                                });
                                // notifyListeners();
                              },
                              children: ExplanationDataList.screen_list
                                  .map((e) => ExplanationPage(screen: e))
                                  .toList())),
                      flex: 4),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: const EdgeInsets.symmetric(vertical: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    ExplanationDataList.screen_list.length,
                                    (index) => createCircle(index: index)),
                              )),
                          BottomButtons(
                            currentIndex: _currentIndex,
                            dataLength: ExplanationDataList.screen_list.length,
                            controller: _controller,
                          )
                        ],
                      ))
                ],
              ),
            )
          ]),
        )));
  }
}
