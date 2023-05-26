import 'package:flutter/animation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:trivia_app/screens/quiz/components/Question.dart';
import 'package:trivia_app/screens/quiz/quiz_screen.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;


  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 20), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward();
    super.onInit();
  }
}
