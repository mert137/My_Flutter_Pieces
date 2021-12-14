import 'package:flutter/material.dart';

class ExplanationStrings {
  static const List<String> title = [
    "A Day at the Park",
    "Playing Fetch",
    "Relaxing Walk"
  ];

  static const List<String> description = [
    "Labore do ex cillum fugiat anim nulla pariatur est. Elit laboris eiusmod ex occaecat do ea officia esse culpa.",
    "Sit ullamco anim deserunt aliquip mollit id. Occaecat labore laboris magna reprehenderit sint in sunt ea.",
    "Eiusmod aliqua laboris duis eiusmod ea ea commodo dolore. Ullamco nulla nostrud et officia."
  ];

  static const List<String> localImageSrc = [
    "assets/images/onboardingscreen/1.svg",
    "assets/images/onboardingscreen/2.svg",
    "assets/images/onboardingscreen/3.svg",
  ];

  static List<Color> backgroundColor = [
    Colors.orange[500]!,
    Colors.orange[700]!,
    Colors.green[800]!
  ];
}

class ExplanationData {
  final String _title;
  final String _description;
  final String _localImageSrc;
  final Color _backgroundColor;

  ExplanationData(this._title, this._description, this._localImageSrc,
      this._backgroundColor);

  String get title => _title;

  String get description => _description;

  String get localImageSrc => _localImageSrc;

  Color get backgroundColor => _backgroundColor;
}

class ExplanationDataList {
  static final List<ExplanationData> screen_list = [];
  static void prepare_data_list() {
    for (int i = 0; i < 3; i++) {
      ExplanationData screen = ExplanationData(
          ExplanationStrings.title[i],
          ExplanationStrings.description[i],
          ExplanationStrings.localImageSrc[i],
          ExplanationStrings.backgroundColor[i]);
      screen_list.add(screen);
    }
  }
}
