import 'package:flutter_onboard/flutter_onboard.dart';

class OnBoardData{
  static final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
        title: "Set your own goals and get better",
        description: "Goal support your motivation and inspire you to work harder",
        imgUrl: 'assets/undraw_Completed_03xt.png',
    ),
    const OnBoardModel(
      title: "Track your progress with statistics",
      description:
      "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets/undraw_Sign_up_n6im.png',
    ),
    const OnBoardModel(
      title: "Create photo comparision and share your results",
      description:
      "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/undraw_Videographer_xn9m.png',
    ),
  ];
}