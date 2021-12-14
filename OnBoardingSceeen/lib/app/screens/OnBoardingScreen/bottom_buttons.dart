import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final int currentIndex;
  final int dataLength;
  final PageController controller;

  const BottomButtons(
      {Key? key,
      required this.currentIndex,
      required this.dataLength,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: currentIndex == dataLength - 1
          ? [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextButton(
                    child: Text("Get started"),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: BorderSide.none),
                      tapTargetSize:
                          MaterialTapTargetSize.shrinkWrap, // add this
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
              )
            ]
          : [
              TextButton(
                onPressed: () {
                  /*...*/
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  "Skip",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      "Next",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ))
                ],
              )
            ],
    );
  }
}
