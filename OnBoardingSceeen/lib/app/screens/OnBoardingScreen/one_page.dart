import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shallwe/app/screens/OnBoardingScreen/explanation.dart';


class ExplanationPage extends StatelessWidget {

  final ExplanationData screen;

  ExplanationPage({required this.screen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 24, bottom: 16),
            child: SvgPicture.asset(screen.localImageSrc,
                height: MediaQuery.of(context).size.height * 0.33,
                alignment: Alignment.center)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                screen.title,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: Text(
                    screen.description,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}